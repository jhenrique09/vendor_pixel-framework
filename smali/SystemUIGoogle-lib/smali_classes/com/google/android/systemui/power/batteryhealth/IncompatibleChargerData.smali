.class public final Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData$CREATOR;


# instance fields
.field public final isIncompatibleCharger:Z

.field public final lastCompatibleChargerTime:J

.field public final lastIncompatibleChargerTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData$CREATOR;

    invoke-direct {v0}, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData$CREATOR;-><init>()V

    sput-object v0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->CREATOR:Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData$CREATOR;

    return-void
.end method

.method public constructor <init>(JJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p5, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->isIncompatibleCharger:Z

    iput-wide p1, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->lastCompatibleChargerTime:J

    iput-wide p3, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->lastIncompatibleChargerTime:J

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;

    iget-boolean v1, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->isIncompatibleCharger:Z

    iget-boolean v3, p1, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->isIncompatibleCharger:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->lastCompatibleChargerTime:J

    iget-wide v5, p1, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->lastCompatibleChargerTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->lastIncompatibleChargerTime:J

    iget-wide p0, p1, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->lastIncompatibleChargerTime:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->isIncompatibleCharger:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->lastCompatibleChargerTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->lastIncompatibleChargerTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->isIncompatibleCharger:Z

    iget-wide v1, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->lastCompatibleChargerTime:J

    invoke-static {v1, v2}, Lcom/google/android/systemui/power/DumpUtils;->toReadableDateTime(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->lastIncompatibleChargerTime:J

    invoke-static {v2, v3}, Lcom/google/android/systemui/power/DumpUtils;->toReadableDateTime(J)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isIncompatibleCharger: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", lastCompatibleChargerTime: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lastIncompatibleChargerTime: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean p2, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->isIncompatibleCharger:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->lastCompatibleChargerTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/google/android/systemui/power/batteryhealth/IncompatibleChargerData;->lastIncompatibleChargerTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
