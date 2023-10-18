.class public final Lvendor/google/google_battery/BatteryHealthStats;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public healthAlgo:I

.field public healthCapacityIndex:I

.field public healthImpedanceIndex:I

.field public healthIndex:I

.field public healthStatus:I

.field public healthSwellIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvendor/google/google_battery/BatteryHealthStats$1;

    invoke-direct {v0}, Lvendor/google/google_battery/BatteryHealthStats$1;-><init>()V

    sput-object v0, Lvendor/google/google_battery/BatteryHealthStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthAlgo:I

    iput v0, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthStatus:I

    iput v0, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthIndex:I

    iput v0, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthCapacityIndex:I

    iput v0, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthImpedanceIndex:I

    iput v0, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthSwellIndex:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthAlgo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthCapacityIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthImpedanceIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lvendor/google/google_battery/BatteryHealthStats;->healthSwellIndex:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
