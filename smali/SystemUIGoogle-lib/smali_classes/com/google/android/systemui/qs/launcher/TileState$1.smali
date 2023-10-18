.class public final Lcom/google/android/systemui/qs/launcher/TileState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/google/android/systemui/qs/launcher/TileState;

    invoke-direct {p0, p1}, Lcom/google/android/systemui/qs/launcher/TileState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/systemui/qs/launcher/TileState;

    return-object p0
.end method
