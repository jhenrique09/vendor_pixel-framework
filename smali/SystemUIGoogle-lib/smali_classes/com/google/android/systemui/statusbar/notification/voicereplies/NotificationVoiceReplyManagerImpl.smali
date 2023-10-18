.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;


# instance fields
.field public final activeCandidate:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final activeClientsByUser:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final activeSession:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final hideVisibleQuickPhraseCtaRequests:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

.field public final notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

.field public final notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final powerManager:Landroid/os/PowerManager;

.field public final quickPhraseCandidate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final remoteInputViewActivatedForVoiceReply:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final sessionRequests:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final shadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final topCandidate:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/os/PowerManager;Landroid/view/LayoutInflater;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->notifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->shadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iput-object p5, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    iput-object p6, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object p7, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p8, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p9, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->powerManager:Landroid/os/PowerManager;

    iput-object p10, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p11, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-static {}, Lkotlin/collections/MapsKt___MapsJvmKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->activeClientsByUser:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x7

    invoke-static {p1, p1, p2, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->hideVisibleQuickPhraseCtaRequests:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p1, p1, p2, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->remoteInputViewActivatedForVoiceReply:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p1, p1, p2, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->sessionRequests:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->activeSession:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->topCandidate:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->activeCandidate:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->getHeadsUpEvents(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    new-instance p5, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$special$$inlined$map$1;

    invoke-direct {p5, p4, p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;I)V

    new-instance p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p4, p3, p5, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    invoke-static {p4, p12, p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->quickPhraseCandidate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 1

    sget-object v0, Lcom/android/systemui/flags/Flags;->TEAMFOOD:Lcom/android/systemui/flags/UnreleasedFlag;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
