.class public final Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final actionId:J

.field public final isHapticConsumed:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;->isHapticConsumed:Z

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;->actionId:J

    return-void
.end method
