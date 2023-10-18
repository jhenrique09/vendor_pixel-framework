.class public final Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$FeatureVector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final gesture:I

.field public final timestamp:J

.field public final vector:[F


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$FeatureVector;->timestamp:J

    iget-object v0, p1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;->featureVector:[F

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$FeatureVector;->vector:[F

    iget p1, p1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;->gestureType:I

    iput p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$FeatureVector;->gesture:I

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$FeatureVector;->timestamp:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "      Gesture: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$FeatureVector;->gesture:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Time: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$FeatureVector;->vector:[F

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p0, v1

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-le v2, v4, :cond_0

    const-string v4, ", "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, " ]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "      "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
