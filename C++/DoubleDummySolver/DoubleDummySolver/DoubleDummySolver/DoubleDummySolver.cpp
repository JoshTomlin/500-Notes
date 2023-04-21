// DoubleDummySolver.cpp : This file contains the 'main' function. Program execution begins and ends there.
//
#define _CRT_SECURE_NO_WARNINGS

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "include/dll.h"
#include "include/portab.h"
#include "examples/hands.h"

using namespace std;

void solveBoard() {
    
    deal dl;
    futureTricks fut2, // solutions == 2
        fut3; // solutions == 3

    int target;
    int solutions;
    int mode;
    int threadIndex = 0;
    int res;
    char line[80];
    bool match2;
    bool match3;

    int trump = 0;
    int first = 0;
    int holdings[4][4] = { {32,32,32,36},{4,4,4,64},{8,8,8,8},{16,16,16,16} };

    SetMaxThreads(1);

        dl.trump = trump;
        dl.first = first;

        dl.currentTrickSuit[0] = 0;
        dl.currentTrickSuit[1] = 0;
        dl.currentTrickSuit[2] = 0;

        dl.currentTrickRank[0] = 0;
        dl.currentTrickRank[1] = 0;
        dl.currentTrickRank[2] = 0;

        for (int h = 0; h < DDS_HANDS; h++)
            for (int s = 0; s < DDS_SUITS; s++) {
                dl.remainCards[h][s] = holdings[h][s];
                cout << "holdings[" << h << "][" << s << "] = " << holdings[h][s] << "\n";
            }

        cout << "remainCards created\n";

        target = -1;
        solutions = 3;
        mode = 0;
        res = SolveBoard(dl, target, solutions, mode, &fut3, threadIndex);

        cout << " SolveBoard Called\n";

        if (res != RETURN_NO_FAULT)
        {
            ErrorMessage(res, line);
            printf("DDS error: %s\n", line);
        }

        /*
        match3 = CompareFut(&fut3, handno, solutions);

        solutions = 2;
        res = SolveBoard(dl, target, solutions, mode, &fut2, threadIndex);
        if (res != RETURN_NO_FAULT)
        {
            ErrorMessage(res, line);
            printf("DDS error: %s\n", line);
        }

        match2 = CompareFut(&fut2, handno, solutions);
        

        sprintf(line,
            "SolveBoard, hand %d: solutions 3 %s, solutions 2 %s\n",
            handno + 1,
            (match3 ? "OK" : "ERROR"),
            (match2 ? "OK" : "ERROR"));

        // PrintHand(line, dl.remainCards);
        */

        cout << "res = " << res << "\n";

        cout << "cards: " << fut3.cards << "\n";
        for (int i = 0; i < fut3.cards; i++) {
            cout << "suit[" << i << "]: " << fut3.suit[i] << "\n";
            cout << "rank[" << i << "]: " << fut3.rank[i] << "\n";
            cout << "equals[" << i << "]: " << fut3.equals[i] << "\n";
            cout << "score[" << i << "]: " << fut3.score[i] << "\n";
        }

        sprintf(line, "solutions == 3\n");
        //PrintFut(line, &fut3);
        sprintf(line, "solutions == 2\n");
        //PrintFut(line, &fut2);
        
        
}



int main()
{
    cout << "Calling solveBoard()\n";
    solveBoard();
    cout << "Done";


    system("pause");
    return 0;
}































// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
