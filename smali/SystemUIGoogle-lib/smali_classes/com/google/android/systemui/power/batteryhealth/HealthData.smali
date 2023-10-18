.class public final Lcom/google/android/systemui/power/batteryhealth/HealthData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/systemui/power/batteryhealth/HealthData$CREATOR;


# instance fields
.field public final capacityIndex:I

.field public final healthIndex:I

.field public final healthStatus:I

.field public final performanceIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/power/batteryhealth/HealthData$CREATOR;

    invoke-direct {v0}, Lcom/google/android/systemui/power/batteryhealth/HealthData$CREATOR;-><init>()V

    sput-object v0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->CREATOR:Lcom/google/android/systemui/power/batteryhealth/HealthData$CREATOR;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->healthIndex:I

    iput p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->performanceIndex:I

    iput p3, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->capacityIndex:I

    iput p4, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->healthStatus:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/systemui/power/batteryhealth/HealthData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/systemui/power/batteryhealth/HealthData;

    iget v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->healthIndex:I

    iget v3, p1, Lcom/google/android/systemui/power/batteryhealth/HealthData;->healthIndex:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->performanceIndex:I

    iget v3, p1, Lcom/google/android/systemui/power/batteryhealth/HealthData;->performanceIndex:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->capacityIndex:I

    iget v3, p1, Lcom/google/android/systemui/power/batteryhealth/HealthData;->capacityIndex:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->healthStatus:I

    iget p1, p1, Lcom/google/android/systemui/power/batteryhealth/HealthData;->healthStatus:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->healthIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->performanceIndex:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->capacityIndex:I

    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->healthStatus:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->healthIndex:I

    iget v1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->performanceIndex:I

    iget v2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->capacityIndex:I

    iget p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->healthStatus:I

    const-string v3, "hi: "

    const-string v4, ", pi: "

    const-string v5, ", ci: "

    invoke-static {v3, v0, v4, v1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->healthIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->performanceIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->capacityIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthData;->healthStatus:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
