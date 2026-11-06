with AUnit;
with AUnit.Test_Cases;

package Sample_Tests is

   type Sample_Test is new AUnit.Test_Cases.Test_Case with null record;

   overriding procedure Register_Tests (T : in out Sample_Test);

   overriding function Name (T : Sample_Test) return AUnit.Message_String;

   procedure Test_Useless (T : in out AUnit.Test_Cases.Test_Case'Class);
end Sample_Tests;