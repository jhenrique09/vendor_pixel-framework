.class public final Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mActionId:J

.field public final mHapticConsumed:Z

.field public final mHostSuspended:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->mHapticConsumed:Z

    iput-boolean p2, p0, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->mHostSuspended:Z

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->mActionId:J

    return-void
.end method
