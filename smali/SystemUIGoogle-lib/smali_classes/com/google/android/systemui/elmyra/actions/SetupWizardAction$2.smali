.class public final Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/elmyra/gates/Gate$Listener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$2;->this$0:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/elmyra/gates/Gate;)V
    .locals 0

    check-cast p1, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;

    iget-boolean p1, p1, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mDeferredSetupComplete:Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$2;->this$0:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mUserCompletedSuw:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    return-void
.end method
