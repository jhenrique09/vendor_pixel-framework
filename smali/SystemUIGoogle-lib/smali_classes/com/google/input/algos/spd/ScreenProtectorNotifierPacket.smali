.class public final Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public detectorStatus:B

.field public response:B

.field public userStatus:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket$1;

    invoke-direct {v0}, Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket$1;-><init>()V

    sput-object v0, Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket;->response:B

    iput-byte v0, p0, Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket;->detectorStatus:B

    iput-byte v0, p0, Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket;->userStatus:B

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

    iget-byte v0, p0, Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket;->response:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket;->detectorStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p0, p0, Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket;->userStatus:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
