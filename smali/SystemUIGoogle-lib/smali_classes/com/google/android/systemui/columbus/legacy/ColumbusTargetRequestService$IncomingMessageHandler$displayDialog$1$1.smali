.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $appInfo:Landroid/content/pm/LauncherActivityInfo;

.field public final synthetic $previousCount:I

.field public final synthetic $replyTo:Landroid/os/Messenger;

.field public final synthetic $requestCode:I

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

.field public final synthetic this$1:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;


# direct methods
.method public constructor <init>(IILandroid/content/pm/LauncherActivityInfo;Landroid/os/Messenger;Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;)V
    .locals 0

    iput-object p6, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$1:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$replyTo:Landroid/os/Messenger;

    iput p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$requestCode:I

    iput p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$previousCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 p1, -0x2

    const/4 v0, 0x0

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const-string p0, "Columbus/TargetRequest"

    const-string p1, "Invalid dialog option: "

    invoke-static {p1, p2, p0}, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "columbus_enabled"

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, p2, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "columbus_action"

    const-string v1, "launch"

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v2, v2, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "columbus_launch_app"

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v2, v2, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "columbus_launch_app_shortcut"

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v2, v2, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$1:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$replyTo:Landroid/os/Messenger;

    iget v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$requestCode:I

    sget v2, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v1, v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p1, "Columbus/TargetRequest"

    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Target changed to "

    invoke-static {v1, p2, p1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$previousCount:I

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_FOLLOW_ON_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    :goto_0
    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object p2, p2, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, v0, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->columbusStructuredDataManager:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-wide v4, v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_1

    :goto_2
    iget-object v1, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v3, v0

    :goto_3
    if-ge v3, v1, :cond_4

    iget-object v6, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "packageName"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v1, "lastDeny"

    invoke-virtual {v6, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->storePackageStats()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    :try_start_2
    iget-object v7, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->makeJSONObject$default(Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;Ljava/lang/String;IJI)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->storePackageStats()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p2

    :goto_4
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$1:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$replyTo:Landroid/os/Messenger;

    iget v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$requestCode:I

    sget v2, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x5

    invoke-static {p2, v1, p1}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    const-string p1, "Columbus/TargetRequest"

    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Target change denied by user: "

    invoke-static {v1, p2, p1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$previousCount:I

    if-nez p1, :cond_5

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    goto :goto_5

    :cond_5
    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_FOLLOW_ON_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    :goto_5
    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object p2, p2, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, v0, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :goto_6
    return-void

    :goto_7
    monitor-exit p2

    throw p0
.end method
