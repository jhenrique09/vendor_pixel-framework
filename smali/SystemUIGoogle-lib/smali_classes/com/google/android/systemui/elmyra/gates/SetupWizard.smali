.class public final Lcom/google/android/systemui/elmyra/gates/SetupWizard;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source ""


# instance fields
.field public final mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mProvisionedListener:Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;

.field public final mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

.field public mSetupComplete:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/google/android/systemui/elmyra/actions/SettingsAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance p1, Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;-><init>(Lcom/google/android/systemui/elmyra/gates/SetupWizard;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mProvisionedListener:Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mSetupComplete:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onActivate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mSetupComplete:Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mProvisionedListener:Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mProvisionedListener:Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [isDeviceProvisioned -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isCurrentUserSetup -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
