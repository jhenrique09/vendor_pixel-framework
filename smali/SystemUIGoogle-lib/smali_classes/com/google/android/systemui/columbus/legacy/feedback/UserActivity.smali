.class public final Lcom/google/android/systemui/columbus/legacy/feedback/UserActivity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/legacy/feedback/FeedbackEffect;


# instance fields
.field public final powerManager:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/feedback/UserActivity;->powerManager:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/feedback/UserActivity;->powerManager:Ldagger/Lazy;

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/PowerManager;->userActivity(JII)V

    :cond_0
    return-void
.end method
