.class public final Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;
.super Lcom/google/android/systemui/columbus/legacy/gates/Gate;
.source ""


# instance fields
.field public final keyguardMonitorCallback:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility$keyguardMonitorCallback$1;

.field public final keyguardStateController:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility$keyguardMonitorCallback$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    move-object v1, v0

    check-cast v1, Ldagger/internal/DoubleCheck;

    invoke-virtual {v1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardVisibility$keyguardMonitorCallback$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
