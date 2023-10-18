.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;
.super Landroid/os/Handler;
.source ""


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static replyToMessenger(Landroid/os/Messenger;II)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object p2

    iput p1, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public final getAppInfoForPackage(Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfo;
    .locals 10

    const-string v0, "getAppInfoForPackage pkg="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    const-string v4, "getMainActivityLaunchIntent component="

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->launcherApps:Landroid/content/pm/LauncherApps;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v2, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v8, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->launcherApps:Landroid/content/pm/LauncherApps;

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v9, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v9, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v9}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v3, v7, v9}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    move-object v3, v7

    :goto_0
    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    :cond_3
    iget-object v8, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->launcherApps:Landroid/content/pm/LauncherApps;

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v9, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v9, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v9}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v3, v7, v9}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_4
    move-object v3, v7

    :goto_2
    if-eqz v3, :cond_5

    move v3, v5

    goto :goto_3

    :catch_0
    :cond_5
    move v3, v6

    :goto_3
    if-eqz v3, :cond_0

    move-object v7, v0

    :cond_6
    :try_start_4
    check-cast v7, Landroid/content/pm/LauncherActivityInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_8

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_8
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->launcherApps:Landroid/content/pm/LauncherApps;

    if-eqz v0, :cond_10

    iget-object v3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    :try_start_5
    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {v1, v2, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v8, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->launcherApps:Landroid/content/pm/LauncherApps;

    if-eqz v8, :cond_a

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v9, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v9, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v9}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v3, v7, v9}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :cond_a
    move-object v3, v7

    :goto_4
    if-eqz v3, :cond_b

    move v3, v5

    goto :goto_5

    :cond_b
    move v3, v6

    :goto_5
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_7

    :catchall_2
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    :cond_c
    iget-object v8, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->launcherApps:Landroid/content/pm/LauncherApps;

    if-eqz v8, :cond_d

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v9, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v9, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v9}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v3, v7, v9}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    :cond_d
    move-object v3, v7

    :goto_6
    if-eqz v3, :cond_e

    move v3, v5

    goto :goto_7

    :catch_1
    :cond_e
    move v3, v6

    :goto_7
    if-eqz v3, :cond_9

    move-object v7, v0

    :cond_f
    check-cast v7, Landroid/content/pm/LauncherActivityInfo;

    :cond_10
    :goto_8
    return-object v7
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    invoke-virtual {v0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "Columbus/TargetRequest"

    if-eq v2, v3, :cond_7

    if-eq v2, v5, :cond_1

    const-string p0, "Invalid request type: "

    invoke-static {p0, v2, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->packageIsNotAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v2, v2, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->columbusStructuredDataManager:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;

    invoke-virtual {v2, v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->getPackageShownCount(Ljava/lang/String;)I

    move-result v2

    if-lt v2, v4, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-nez v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->getAppInfoForPackage(Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->packageIsTarget(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v1}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    return-void

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->packageNeedsToCoolDown(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v4}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    return-void

    :cond_5
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v3}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    goto/16 :goto_3

    :cond_6
    :goto_2
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v5}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    return-void

    :cond_7
    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->packageIsNotAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->packageIsTarget(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v1}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Caller already target: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->packageNeedsToCoolDown(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v5}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Caller throttled: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v2, v2, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->columbusStructuredDataManager:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;

    invoke-virtual {v2, v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->getPackageShownCount(Ljava/lang/String;)I

    move-result v2

    if-lt v2, v4, :cond_b

    move v1, v3

    :cond_b
    if-eqz v1, :cond_c

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v4}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Caller already shown max times: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->getAppInfoForPackage(Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    if-nez v2, :cond_d

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    invoke-static {p0, p1, v1}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p0, "Caller not launchable: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v5, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object p1, v1, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->mainHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;Landroid/content/pm/LauncherActivityInfo;Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;Landroid/os/Messenger;I)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    return-void

    :cond_e
    :goto_4
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v3}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unsupported caller: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final packageIsNotAllowed(Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->allowPackageList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->sysUIContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x8000000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, p1, v5

    iget-object v7, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    sget-object v7, Lkotlin/text/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->allowCertList:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v4, v1

    :cond_5
    :goto_2
    xor-int/lit8 p0, v4, 0x1

    return p0
.end method

.method public final packageIsTarget(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->isColumbusEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->selectedAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->selectedApp()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final packageNeedsToCoolDown(Ljava/lang/String;)Z
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->columbusStructuredDataManager:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->getLastDenyTimestamp(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v1, p0

    monitor-exit v0

    sget-wide p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->PACKAGE_DENY_COOLDOWN_MS:J

    cmp-long p0, v1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
