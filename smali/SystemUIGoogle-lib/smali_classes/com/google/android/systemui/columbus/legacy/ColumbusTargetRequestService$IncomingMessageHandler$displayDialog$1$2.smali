.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic $appInfo:Landroid/content/pm/LauncherActivityInfo;

.field public final synthetic $previousCount:I

.field public final synthetic $replyTo:Landroid/os/Messenger;

.field public final synthetic $requestCode:I

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;

.field public final synthetic this$1:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;


# direct methods
.method public constructor <init>(IILandroid/content/pm/LauncherActivityInfo;Landroid/os/Messenger;Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;)V
    .locals 0

    iput-object p5, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$replyTo:Landroid/os/Messenger;

    iput p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$requestCode:I

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    iput p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$previousCount:I

    iput-object p6, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->this$1:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$replyTo:Landroid/os/Messenger;

    iget v1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$requestCode:I

    sget v2, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x6

    invoke-static {v0, v1, p1}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;->replyToMessenger(Landroid/os/Messenger;II)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Target change dismissed by user: "

    const-string v1, "Columbus/TargetRequest"

    invoke-static {v0, p1, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$previousCount:I

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_FOLLOW_ON_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->this$1:Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    return-void
.end method
