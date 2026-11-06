with AUnit.Assertions;

with Portal;
with Bedrock.Colors; use Bedrock.Colors;

package body Sample_Tests is

   procedure Test_Useless (T : in out AUnit.Test_Cases.Test_Case'Class) is
      pragma Unreferenced (T);
   begin
      AUnit.Assertions.Assert
         (Portal.Default_Clear = Black,
         "Useless test for demonstration purposes");
   end Test_Useless;

   overriding procedure Register_Tests (T : in out Sample_Test) is
   begin
      AUnit.Test_Cases.Registration.Register_Routine
         (T, Test_Useless'Access, "Test_Useless");
   end Register_Tests;

   overriding function Name (T : Sample_Test) return AUnit.Message_String is
   begin
      return AUnit.Format ("Sample_Tests");
   end Name;

end Sample_Tests;