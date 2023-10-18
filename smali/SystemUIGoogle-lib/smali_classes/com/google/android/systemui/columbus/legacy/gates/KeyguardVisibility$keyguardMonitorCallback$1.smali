.class public final Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility$keyguardMonitorCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility$keyguardMonitorCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility$keyguardMonitorCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->setBlocking(Z)V

    return-void
.end method
