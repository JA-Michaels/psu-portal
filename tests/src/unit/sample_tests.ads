with AUnit;
with AUnit.Test_Cases;

-- This is here for an example, should be removed once real test development starts
package Sample_Tests is
   -- A subtype of AUnit.Test_Cases.Test_Case is created for each test
   type Sample_Test is new AUnit.Test_Cases.Test_Case with null record;

   -- The following proceudre and method must be implemented for each test case
   -- Registers the test to be run
   overriding procedure Register_Tests (T : in out Sample_Test);
   -- Returns the name of the test case, this is used for reporting
   overriding function Name (T : Sample_Test) return AUnit.Message_String;

   -- This is the actual test, more can be added here
   procedure Test_Useless (T : in out AUnit.Test_Cases.Test_Case'Class);
end Sample_Tests;