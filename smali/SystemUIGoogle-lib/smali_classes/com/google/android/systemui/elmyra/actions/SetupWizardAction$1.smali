.class public final Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitching(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mDeviceInDemoMode:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    return-void
.end method
