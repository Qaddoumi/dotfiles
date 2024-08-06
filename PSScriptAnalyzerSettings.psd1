@{
    Severity     = @(
        'Error', 
        'Warning', 
        'Information'
    )
    ExcludeRules = @(
        'PSUseDeclaredVarsMoreThanAssignments',
        'PSAvoidUsingWriteHost',
        'PSAvoidUsingInvokeExpression'
    )
}
# How to use : RUN
# Invoke-ScriptAnalyzer -Path "WindowsTweaks\RegistrySettings.ps1" -Settings "PSScriptAnalyzerSettings.psd1" -fix