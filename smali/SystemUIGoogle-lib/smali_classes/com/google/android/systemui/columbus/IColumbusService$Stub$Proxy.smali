.class public final Lcom/google/android/systemui/columbus/IColumbusService$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/IColumbusService;


# instance fields
.field public final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/IColumbusService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/IColumbusService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public final registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/IColumbusService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.systemui.columbus.IColumbusService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/IColumbusService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
