with AUnit.Run;
with AUnit.Reporter.Text;

with Unit_Suite;

procedure Test_Runner is
   procedure Unit_Runner is new AUnit.Run.Test_Runner (Unit_Suite.Suite);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Unit_Runner (Reporter);
end Test_Runner;
