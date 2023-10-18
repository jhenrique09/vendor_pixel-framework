.class public final Lcom/google/android/systemui/elmyra/feedback/UserActivity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# instance fields
.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mLastStage:I

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mTriggerCount:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/PowerManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mTriggerCount:I

    iput v0, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mLastStage:I

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public final onProgress(IF)V
    .locals 3

    iget p2, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mLastStage:I

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    iget p2, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mTriggerCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mTriggerCount:I

    :cond_0
    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mLastStage:I

    return-void
.end method

.method public final onRelease()V
    .locals 0

    return-void
.end method

.method public final onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget p1, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mTriggerCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mTriggerCount:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mTriggerCount -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mTriggerCount:I

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
