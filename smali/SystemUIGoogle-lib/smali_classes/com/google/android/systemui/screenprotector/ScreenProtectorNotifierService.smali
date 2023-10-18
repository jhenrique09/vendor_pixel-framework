.class public final Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INTERFACE_NAME:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDetectorService:Lcom/google/input/algos/spd/IScreenProtectorDetectorService;

.field public final mListener:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$2;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mNotifyId:I

.field public final mServiceCallback:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$1;

.field public final mServiceLock:Ljava/lang/Object;

.field public mSharedPreferenceChangeListener:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$3;


# direct methods
.method public static -$$Nest$mupdateScreenProtectorNotification(Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mContext:Landroid/content/Context;

    const v3, 0x7f130794

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    const v6, 0x7f130795

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_2

    const v6, 0x7f130790

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Creating ScreenProtectorNotification: notifyID = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mNotifyId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ScreenProtectorNotifierService"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mNotifyId:I

    if-eqz v7, :cond_1

    if-eq v7, v1, :cond_1

    iget-object v9, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v8, v7, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_1
    iput v1, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mNotifyId:I

    new-instance v13, Landroid/content/Intent;

    const-class v7, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;

    invoke-direct {v13, v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v7, 0x10000000

    invoke-virtual {v13, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v7, "notify_id"

    invoke-virtual {v13, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v11, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v14, 0xc000000

    const/4 v15, 0x0

    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v7, Landroid/app/NotificationChannel;

    const-string v9, "ScreenProtectorNotificationChannel"

    invoke-direct {v7, v9, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x108008a

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x10405ee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.substName"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v2, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v2, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v0, v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mNotifyId:I

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v8, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_2
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/input/algos/spd/IScreenProtectorDetectorService;->DESCRIPTOR:Ljava/lang/String;

    const-string v2, "/default"

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->INTERFACE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mServiceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mNotifyId:I

    new-instance v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$1;-><init>(Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;)V

    iput-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mServiceCallback:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$1;

    new-instance v1, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$2;-><init>(Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;)V

    iput-object v1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mListener:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$2;

    iput-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mContext:Landroid/content/Context;

    sget-object p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->INTERFACE_NAME:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "ScreenProtectorNotifierService"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "not declared in manifest, will not send notification."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to register for notifications."

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final getScreenProtectorDetectorService()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mDetectorService:Lcom/google/input/algos/spd/IScreenProtectorDetectorService;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->INTERFACE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "ScreenProtectorNotifierService"

    if-nez v1, :cond_1

    const-string p0, "Failed to get IScreenProtectorDetectorService despite being declared."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget v3, Lcom/google/input/algos/spd/IScreenProtectorDetectorService$Stub;->$r8$clinit:I

    sget-object v3, Lcom/google/input/algos/spd/IScreenProtectorDetectorService;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v4, v3, Lcom/google/input/algos/spd/IScreenProtectorDetectorService;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/google/input/algos/spd/IScreenProtectorDetectorService;

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/google/input/algos/spd/IScreenProtectorDetectorService$Stub$Proxy;

    invoke-direct {v3, v1}, Lcom/google/input/algos/spd/IScreenProtectorDetectorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object v3, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mDetectorService:Lcom/google/input/algos/spd/IScreenProtectorDetectorService;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Service initialized - "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerScreenProtectorDetectorLister()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mDetectorService:Lcom/google/input/algos/spd/IScreenProtectorDetectorService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mListener:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$2;

    check-cast v0, Lcom/google/input/algos/spd/IScreenProtectorDetectorService$Stub$Proxy;

    iget-object v1, v0, Lcom/google/input/algos/spd/IScreenProtectorDetectorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/google/input/algos/spd/IScreenProtectorDetectorService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, v0, Lcom/google/input/algos/spd/IScreenProtectorDetectorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v1, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Method registerListener is unimplemented."

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "ScreenProtectorNotifierService"

    const-string v1, "Failed to registerListener."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateNotificationPreference()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mContext:Landroid/content/Context;

    const-string v1, "screen_protector_shared_perf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notification_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mDetectorService:Lcom/google/input/algos/spd/IScreenProtectorDetectorService;

    check-cast p0, Lcom/google/input/algos/spd/IScreenProtectorDetectorService$Stub$Proxy;

    invoke-virtual {p0, v0}, Lcom/google/input/algos/spd/IScreenProtectorDetectorService$Stub$Proxy;->updateScreenProtectorNotificationPreference(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "ScreenProtectorNotifierService"

    const-string v2, "Failed to updateNotificationPreference."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
