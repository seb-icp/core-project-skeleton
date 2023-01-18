import Icrc1 "./icrc1";
actor {
    //My discord is: iri#1598
    //Feel free to DM me any question.
    type Proposal = {
        creator : Icrc1.Account;
        timestamp : Int;
        //Text that will show in the website.mo controlled by the dao
        payload : Text;
        //Votes (Yes, No)
        votes : (Nat, Nat);
        status : {
            #Open;
            #Passed;
            #Rejected;
        };
    };

    public shared({caller}) func submit_proposal(this_payload : Text) : async {#Ok : Proposal; #Err : Text} {
        return #Err("Not implemented yet");
    };

    public shared({caller}) func vote(proposal_id : Int, yes_or_no : Bool) : async {#Ok : (Nat, Nat); #Err : Text} {
        return #Err("Not implemented yet");
    };

    public query func get_proposal(id : Int) : async ?Proposal {
        return null
    };
    
    public query func get_all_proposals() : async [(Int, Proposal)] {
        return []
    };
};