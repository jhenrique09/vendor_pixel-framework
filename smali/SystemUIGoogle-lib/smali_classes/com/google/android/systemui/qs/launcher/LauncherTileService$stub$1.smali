.class public final Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/qs/launcher/LauncherTileService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.google.android.systemui.qs.launcher.ILauncherTileService"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic getMaxTransactionId()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final getTile(Ljava/lang/String;Z)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object v0, v0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->qsHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    if-eqz v1, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v0, "custom("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v3, "LauncherTileService"

    if-eqz v0, :cond_3

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Can\'t create a custom tile %s."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object v0, v0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->createdTilesMap:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    if-nez p2, :cond_5

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Tile %s should be already created."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    iget-object p2, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object p2, p2, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->qsHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p2, p1}, Lcom/android/systemui/qs/QSHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Tile %s is not available."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_6
    iget-object p0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object p0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->createdTilesMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The created tile %s is null."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v1, p2

    :goto_2
    return-object v1
.end method

.method public final bridge synthetic getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->getTransactionName$com$google$android$systemui$qs$launcher$ILauncherTileService$Stub(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTransactionName$com$google$android$systemui$qs$launcher$ILauncherTileService$Stub(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "handleLongClick"

    goto :goto_0

    :cond_1
    const-string p0, "handleClick"

    goto :goto_0

    :cond_2
    const-string p0, "clearTileListeners"

    goto :goto_0

    :cond_3
    const-string p0, "addTileListener"

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->onTransact$com$google$android$systemui$qs$launcher$ILauncherTileService$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method

.method public final onTransact$com$google$android$systemui$qs$launcher$ILauncherTileService$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.google.android.systemui.qs.launcher.ILauncherTileService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p2, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object p2, p2, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->executor:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;

    invoke-direct {p4, p0, p1, v0}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;-><init>(Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;Ljava/lang/String;I)V

    invoke-interface {p2, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p2, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object p2, p2, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->executor:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;

    const/4 v0, 0x0

    invoke-direct {p4, p0, p1, v0}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;-><init>(Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;Ljava/lang/String;I)V

    invoke-interface {p2, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p2, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object p2, p2, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->executor:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;

    invoke-direct {p4, p0, p1, v1}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;-><init>(Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;Ljava/lang/String;I)V

    invoke-interface {p2, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    if-nez p4, :cond_5

    const/4 p4, 0x0

    goto :goto_0

    :cond_5
    const-string v0, "com.google.android.systemui.qs.launcher.ILauncherTileListener"

    invoke-interface {p4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v2, v0, Lcom/google/android/systemui/qs/launcher/ILauncherTileListener;

    if-eqz v2, :cond_6

    move-object p4, v0

    check-cast p4, Lcom/google/android/systemui/qs/launcher/ILauncherTileListener;

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/systemui/qs/launcher/ILauncherTileListener$Stub$Proxy;

    invoke-direct {v0, p4}, Lcom/google/android/systemui/qs/launcher/ILauncherTileListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object p4, v0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p2, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object p2, p2, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListener$1;

    invoke-direct {v0, p0, p1, p4}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListener$1;-><init>(Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;Ljava/lang/String;Lcom/google/android/systemui/qs/launcher/ILauncherTileListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    return v1

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
