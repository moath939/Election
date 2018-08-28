pragma solidity ^0.4.24;

import "./Candidates.sol";
import "./Voters.sol";



    



contract MainContract  {
    
    Candidates candidate = new Candidates();
    Voters voters = new Voters();
    
    
    function Voting(string voterIdNumber, string candidateIdNumber, string city,string year) public{
        voters.addVoterDetails(voterIdNumber,candidateIdNumber,city,year);
        uint candidatePreVotes = candidate.getCandidateVotesNumber(candidateIdNumber);
        candidate.addCandidateTracking(candidateIdNumber,candidatePreVotes + 1);
    }
    
   function DeleteVote(string voterIdNumber) public{
        string memory candidateIdNumber = voters.getCandidateByVoterDetails(voterIdNumber);
        uint candidatePreVotes = candidate.getCandidateVotesNumber(candidateIdNumber);
       voters.deleteVoterDetail(voterIdNumber);
      
        
       candidate.addCandidateTracking(candidateIdNumber,candidatePreVotes - 1);
   }
   
   
   
   
   
   
   
    
    
    
    
    
    // function viewAllCandidate () public{
        
    // }
    
    
   
    
    
   
    
}

