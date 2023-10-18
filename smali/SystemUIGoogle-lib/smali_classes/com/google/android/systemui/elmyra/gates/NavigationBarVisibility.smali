.class public final Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source ""


# instance fields
.field public final mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

.field public final mCommandQueueCallbacks:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;

.field public final mDisplayId:I

.field public final mExceptions:Ljava/util/List;

.field public final mGateListener:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;

.field public mIsKeyguardShowing:Z

.field public mIsNavigationGestural:Z

.field public mIsNavigationHidden:Z

.field public final mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

.field public final mNavigationModeGate:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/assist/AssistManagerGoogle;Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;Ljava/util/Set;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance p2, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;-><init>(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mCommandQueueCallbacks:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;-><init>(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mGateListener:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mExceptions:Ljava/util/List;

    const/4 p7, 0x0

    iput-boolean p7, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationHidden:Z

    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mDisplayId:I

    iput-object p4, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iput-object p5, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    iput-object v0, p5, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    iput-object p6, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mNavigationModeGate:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    iput-object v0, p6, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsKeyguardShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationGestural:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iget-boolean v0, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaIsAssistant:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mExceptions:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v2}, Lcom/google/android/systemui/elmyra/actions/Action;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationHidden:Z

    return p0
.end method

.method public final onActivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    iget-object v0, v0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsKeyguardShowing:Z

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mNavigationModeGate:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    iget-boolean v0, v0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mCurrentModeIsGestural:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationGestural:Z

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mNavigationModeGate:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->deactivate()V

    iget-boolean v0, v0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mCurrentModeIsGestural:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationGestural:Z

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->deactivate()V

    iget-object v0, v0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsKeyguardShowing:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mIsNavigationHidden -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mExceptions -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mExceptions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; mIsNavigationGestural -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationGestural:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isActiveAssistantNga() -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iget-boolean p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNgaIsAssistant:Z

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
