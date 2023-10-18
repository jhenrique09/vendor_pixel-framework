.class public final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;
.super Landroid/app/Service;
.source ""


# instance fields
.field public final connectionsByUid:Ljava/util/Map;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

.field public final registrations:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final scope:Lkotlinx/coroutines/internal/ContextScope;

.field public final serializer:Lcom/android/systemui/util/kotlin/IpcSerializer;

.field public final voiceReplyManager:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;Landroid/os/UserManager;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->voiceReplyManager:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    iput-object p4, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->scope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p1, Lcom/android/systemui/util/kotlin/IpcSerializer;

    invoke-direct {p1}, Lcom/android/systemui/util/kotlin/IpcSerializer;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->serializer:Lcom/android/systemui/util/kotlin/IpcSerializer;

    const/4 p1, 0x7

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p2, p2, p3, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->registrations:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->connectionsByUid:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object p1, Lcom/android/systemui/flags/Flags;->TEAMFOOD:Lcom/android/systemui/flags/UnreleasedFlag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v0, Lcom/android/systemui/flags/Flags;->TEAMFOOD:Lcom/android/systemui/flags/UnreleasedFlag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->scope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
