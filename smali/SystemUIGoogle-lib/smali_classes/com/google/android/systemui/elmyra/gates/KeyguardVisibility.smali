.class public final Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source ""


# instance fields
.field public final mKeyguardMonitorCallback:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility$1;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance p1, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility$1;-><init>(Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardMonitorCallback:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility$1;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    return p0
.end method

.method public final onActivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardMonitorCallback:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardMonitorCallback:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
