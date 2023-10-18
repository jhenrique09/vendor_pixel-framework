.class public final Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mHighpassX:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

.field public final mHighpassY:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

.field public final mHighpassZ:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassX:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassY:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassZ:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    return-void
.end method


# virtual methods
.method public final setPara()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassX:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    const v1, 0x3d4ccccd    # 0.05f

    iput v1, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mPara:F

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassY:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    iput v1, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mPara:F

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassZ:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    iput v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mPara:F

    return-void
.end method

.method public final update(Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;)Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;
    .locals 4

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

    iget v1, p1, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->x:F

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassX:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    invoke-virtual {v2, v1}, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->update(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassY:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    iget v3, p1, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->y:F

    invoke-virtual {v2, v3}, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->update(F)F

    move-result v2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassZ:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    iget p1, p1, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->z:F

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->update(F)F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;-><init>(FFF)V

    return-object v0
.end method
