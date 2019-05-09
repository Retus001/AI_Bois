using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace RockPaperScissors
{
	public class RPS_AI_ES : RPS_AI 
	{
        private RPS expertMove;
        private int lastBestMove;
        public List<int> history;
        public int cap;

        public struct move
        {
            public int pprev;
            public int prev;
            public int ans;
            public int value;
        }

        public move[] moveSet = new move[27];
        public Vector4[] moveSetVisual = new Vector4[27];

        private void Start()
        {
            InitializeMoveSet();
            InitializeHistory();
        }

        private void InitializeMoveSet()
        {
            int i = 0;
            for (int pprev = 0; pprev < 3; pprev++)
            {
                for (int prev = 0; prev < 3; prev++)
                {
                    for (int ans = 0; ans < 3; ans++)
                    {
                        moveSet[i].pprev = pprev;
                        moveSet[i].prev = prev;
                        moveSet[i].ans = ans;
                        moveSet[i].value = 0;
                        moveSetVisual[i] = new Vector4(pprev, prev, ans, 0);
                        i++;
                    }
                }
            }
        }
        private void InitializeHistory()
        {
            history.Add(Random.Range(0, 2));
            history.Add(Random.Range(0, 2));
        }

        private void SearchBestCombo()
        {
            Debug.Log("history 0: " + history[0]);
            Debug.Log("history 1: " + history[1]);
            int bestMoveIndex = 0;
            int bestValue = 0;
            for (int i = 0; i < 27; i++)
            {
                if (moveSet[i].pprev == history[0] && moveSet[i].prev == history[1])
                {
                    if (moveSet[i].value >= bestValue)
                    {
                        bestValue = moveSet[i].value;
                        bestMoveIndex = i;
                        Debug.Log("Best move now: " + (RPS)moveSet[i].ans);
                    }
                }
            }

            expertMove = (RPS)moveSet[bestMoveIndex].ans;
            Debug.Log("Expert Move: " + (RPS)moveSet[bestMoveIndex].ans);
            lastBestMove = bestMoveIndex;
        }

        public override RPS GetNextMove()
		{
            return expertMove;
		}
		
		public override void SetLastGameResult(GameResult lastGameResult, RPS userLastMove)
		{
            switch ((int)lastGameResult)
            {
                default:
                    break;

                case 0:
                    moveSet[lastBestMove].value -= 1;
                    if (moveSet[lastBestMove].value < -cap)
                        moveSet[lastBestMove].value = -cap;
                    moveSetVisual[lastBestMove] = new Vector4(moveSetVisual[lastBestMove].x, moveSetVisual[lastBestMove].y, moveSetVisual[lastBestMove].z, moveSet[lastBestMove].value);
                    break;

                case 1:
                    moveSet[lastBestMove].value -= 2;
                    if (moveSet[lastBestMove].value < -cap)
                        moveSet[lastBestMove].value = -cap;
                    moveSetVisual[lastBestMove] = new Vector4(moveSetVisual[lastBestMove].x, moveSetVisual[lastBestMove].y, moveSetVisual[lastBestMove].z, moveSet[lastBestMove].value);
                    break;

                case 2:
                    moveSet[lastBestMove].value += 2;
                    if (moveSet[lastBestMove].value > cap)
                        moveSet[lastBestMove].value = cap;
                    moveSetVisual[lastBestMove] = new Vector4(moveSetVisual[lastBestMove].x, moveSetVisual[lastBestMove].y, moveSetVisual[lastBestMove].z, moveSet[lastBestMove].value);
                    break;
            }

            history.RemoveAt(0);
            history.Add((int)userLastMove);

            SearchBestCombo();

            Debug.Log("Last Match Results [Human: " + userLastMove.ToString() + "] | [AI: " + expertMove.ToString() + "] : " + lastGameResult.ToString() + "\n");
        }
	}
}