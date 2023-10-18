.class public final Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;
.super Lcom/google/android/systemui/elmyra/actions/Action;
.source ""


# instance fields
.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mContext:Landroid/content/Context;

.field public mDeviceInDemoMode:Z

.field public final mKeyguardDeferredSetupListener:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$2;

.field public final mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

.field public final mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

.field public final mSettingsPackageName:Ljava/lang/String;

.field public mUserCompletedSuw:Z

.field public final mUserSwitchCallback:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/elmyra/actions/SettingsAction;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SwitchingProvider$14;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/systemui/elmyra/actions/Action;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;)V

    new-instance p2, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;-><init>(Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserSwitchCallback:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;

    new-instance v0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$2;-><init>(Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mKeyguardDeferredSetupListener:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$2;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f130800

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    iput-object p4, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    iput-object p7, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {p6, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SwitchingProvider$14;->create(Ljava/util/Set;)Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    iput-object v0, p1, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    iget-boolean p1, p1, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mDeferredSetupComplete:Z

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserCompletedSuw:Z

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mDeviceInDemoMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserCompletedSuw:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final onProgress(IF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->updateFeedbackEffects(IF)V

    return-void
.end method

.method public final onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->collapseShade()V

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    iget-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserCompletedSuw:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    invoke-virtual {p1}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.google.android.settings.ASSIST_GESTURE_TRAINING"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mSettingsPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public final triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/systemui/elmyra/actions/Action;->triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/actions/Action;->triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method

.method public final updateFeedbackEffects(IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/Action;->updateFeedbackEffects(IF)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/Action;->updateFeedbackEffects(IF)V

    return-void
.end method
