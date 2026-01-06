#include <iostream>
#include <vector>
#include <fstream>
#include <sstream>
using namespace std;

int main(int arguments, char *arg[])
{
    if (arguments != 2)
    {
        return -6;
    }
    int userID = stoi(arg[1]);
    vector<string> billPaymentVector;
    ifstream readBillPaymentHistoryFile;
    readBillPaymentHistoryFile.open("billPaymentHistory.txt");
    if (readBillPaymentHistoryFile.is_open())
    {
        string line;
        while (getline(readBillPaymentHistoryFile, line))
        {
            int uid;
            char separator;
            stringstream ss(line);
            ss >> uid >> separator;
            if (uid == userID)
            {
                billPaymentVector.push_back(line);
            }
        }
        readBillPaymentHistoryFile.close();
    }
    for (string x : billPaymentVector)
    {
        int uid;
        string billType;
        string serviceProvider;
        string name;
        string consumerNo;
        string paidAmount;
        string time;
        char separator;
        stringstream ss(x);
        ss >> uid >> separator;
        getline(ss, billType, '|');
        getline(ss, serviceProvider, '|');
        getline(ss, name, '|');
        getline(ss, consumerNo, '|');
        getline(ss, paidAmount, '|');
        getline(ss, time);
        cout << uid << '|' << billType << '|' << serviceProvider << '|' << name << '|' << consumerNo << '|' << paidAmount << '|' << time << endl;
    }

    return 0;
}