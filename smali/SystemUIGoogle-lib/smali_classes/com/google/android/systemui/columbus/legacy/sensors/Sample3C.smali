.class public final Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mPoint:Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

.field public final mT:J


# direct methods
.method public constructor <init>(FFFJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;->mPoint:Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

    iput p1, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->x:F

    iput p2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->y:F

    iput p3, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->z:F

    iput-wide p4, p0, Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;->mT:J

    return-void
.end method
