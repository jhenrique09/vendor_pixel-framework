.class public final Lvendor/google/wireless_charger/DockPresent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public docked:Z

.field public id:I

.field public isGetInfoSupported:Z

.field public orientation:B

.field public type:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvendor/google/wireless_charger/DockPresent$1;

    invoke-direct {v0}, Lvendor/google/wireless_charger/DockPresent$1;-><init>()V

    sput-object v0, Lvendor/google/wireless_charger/DockPresent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvendor/google/wireless_charger/DockPresent;->docked:Z

    const/16 v1, 0xf

    iput-byte v1, p0, Lvendor/google/wireless_charger/DockPresent;->type:B

    iput-byte v0, p0, Lvendor/google/wireless_charger/DockPresent;->orientation:B

    iput-boolean v0, p0, Lvendor/google/wireless_charger/DockPresent;->isGetInfoSupported:Z

    iput v0, p0, Lvendor/google/wireless_charger/DockPresent;->id:I

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

    iget-boolean v0, p0, Lvendor/google/wireless_charger/DockPresent;->docked:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-byte v0, p0, Lvendor/google/wireless_charger/DockPresent;->type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lvendor/google/wireless_charger/DockPresent;->orientation:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lvendor/google/wireless_charger/DockPresent;->isGetInfoSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p0, p0, Lvendor/google/wireless_charger/DockPresent;->id:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
