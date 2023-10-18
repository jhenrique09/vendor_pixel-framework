.class public final Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/SetupWizard;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/SetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceProvisionedChanged()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SetupWizard;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mSetupComplete:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mSetupComplete:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_1
    return-void
.end method

.method public final onUserSetupChanged()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SetupWizard;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mSetupComplete:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->mSetupComplete:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_1
    return-void
.end method
