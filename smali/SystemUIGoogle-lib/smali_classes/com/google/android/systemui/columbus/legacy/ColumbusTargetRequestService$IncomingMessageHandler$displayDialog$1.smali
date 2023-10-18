.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $appInfo:Landroid/content/pm/LauncherActivityInfo;

.field public final synthetic $replyTo:Landroid/os/Messenger;

.field public final synthetic $requestCode:I

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

.field public final synthetic this$1:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;Landroid/content/pm/LauncherActivityInfo;Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;Landroid/os/Messenger;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$1:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$replyTo:Landroid/os/Messenger;

    iput p5, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->columbusStructuredDataManager:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;

    iget-object v2, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->getPackageShownCount(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v2, v2, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_DIALOG_SHOWN:Lcom/google/android/systemui/columbus/ColumbusEvent;

    iget-object v4, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    invoke-interface {v2, v3, v10, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    new-instance v2, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;

    iget-object v3, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v3, v3, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->sysUIContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iget-object v11, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    new-instance v12, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;

    iget-object v13, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v14, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$1:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;

    iget-object v15, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$replyTo:Landroid/os/Messenger;

    iget v9, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$requestCode:I

    move-object v3, v12

    move v4, v9

    move v5, v1

    move-object v6, v11

    move-object v7, v15

    move-object v8, v14

    move/from16 v16, v9

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;-><init>(IILandroid/content/pm/LauncherActivityInfo;Landroid/os/Messenger;Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;)V

    new-instance v9, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;

    move-object v3, v9

    move/from16 v4, v16

    move-object v1, v9

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;-><init>(IILandroid/content/pm/LauncherActivityInfo;Landroid/os/Messenger;Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v11}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f13024b

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v11}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f13024a

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v3, 0x7f130248

    invoke-virtual {v2, v3, v12}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x7f130249

    invoke-virtual {v2, v3, v12}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$1:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v2, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->columbusStructuredDataManager:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;

    iget-object v2, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v10, v3, :cond_1

    iget-object v5, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "packageName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v3, "shownCount"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "shownCount"

    add-int/2addr v3, v1

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v1, v10, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->storePackageStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->makeJSONObject$default(Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;Ljava/lang/String;IJI)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;->storePackageStats()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
