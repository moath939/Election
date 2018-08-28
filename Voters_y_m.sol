pragma solidity ^0.4.21;


contract Voters
{
    struct  voterInfo 
    {
        string voterIdNumber;
        string name;
        string birthOfDate;
        string password;
    }
    struct voterDetails
    {
        string voterIdNumber;
        string candidateIdNumber;
        string city;
        string year;
    
    }
    
    mapping (string=>voterInfo) voterInfoMap;
    mapping (string => voterDetails) voterDetailsMap;
    
    
    function addVoterInfo(string voterIdNumber,string name,string birthOfDate,string password) public {
        voterInfoMap[voterIdNumber] = voterInfo(voterIdNumber,name,birthOfDate,password);
    }
    
    function addVoterDetails (string voterIdNumber, string candidateIdNumber, string city,string year) public {
        voterDetailsMap[voterIdNumber] = voterDetails(voterIdNumber,candidateIdNumber,city,year);
    }
    
    
    function deleteVoterDetail(string voterIdNumber) public{
        delete (voterDetailsMap[voterIdNumber]);
    }
    
    function getCandidateByVoterDetails(string voterIdNumber)public  returns(string)  {
        return voterDetailsMap[voterIdNumber].candidateIdNumber;
    }
    
    
    
    
    
     
 
}