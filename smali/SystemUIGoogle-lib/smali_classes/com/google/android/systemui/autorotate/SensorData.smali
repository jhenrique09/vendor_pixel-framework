.class public final Lcom/google/android/systemui/autorotate/SensorData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mSensorIdentifier:I

.field public final mTimestampMillis:J

.field public final mValueX:F

.field public final mValueY:F

.field public final mValueZ:F


# direct methods
.method public constructor <init>(FFFIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/autorotate/SensorData;->mValueX:F

    iput p2, p0, Lcom/google/android/systemui/autorotate/SensorData;->mValueY:F

    iput p3, p0, Lcom/google/android/systemui/autorotate/SensorData;->mValueZ:F

    iput p4, p0, Lcom/google/android/systemui/autorotate/SensorData;->mSensorIdentifier:I

    iput-wide p5, p0, Lcom/google/android/systemui/autorotate/SensorData;->mTimestampMillis:J

    return-void
.end method
