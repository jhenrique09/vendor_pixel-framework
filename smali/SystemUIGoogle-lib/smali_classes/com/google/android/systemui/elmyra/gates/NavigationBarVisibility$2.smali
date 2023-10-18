.class public final Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/elmyra/gates/Gate$Listener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/elmyra/gates/Gate;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    iget-object p1, p1, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsKeyguardShowing:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mNavigationModeGate:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, v0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mCurrentModeIsGestural:Z

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationGestural:Z

    :cond_1
    :goto_0
    return-void
.end method
