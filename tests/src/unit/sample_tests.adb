with AUnit.Assertions;

with Portal;
with Bedrock.Colors; use Bedrock.Colors;

package body Sample_Tests is

   -- Example of a test, they must have this signature
   procedure Test_Useless (T : in out AUnit.Test_Cases.Test_Case'Class) is
      -- This only needs done if the test case is not used
      pragma Unreferenced (T);
   begin
      -- Example assertation
      AUnit.Assertions.Assert
         (Portal.Default_Clear = Black,
         "Useless test for demonstration purposes");
   end Test_Useless;

   -- All tests must be registered in this method to run
   overriding procedure Register_Tests (T : in out Sample_Test) is
   begin
      -- Registration is done as follows
      AUnit.Test_Cases.Registration.Register_Routine
         (T, Test_Useless'Access, "Test_Useless");
   end Register_Tests;

   -- Returns the name of the tests
   overriding function Name (T : Sample_Test) return AUnit.Message_String is
   begin
      return AUnit.Format ("Sample_Tests");
   end Name;

end Sample_Tests;