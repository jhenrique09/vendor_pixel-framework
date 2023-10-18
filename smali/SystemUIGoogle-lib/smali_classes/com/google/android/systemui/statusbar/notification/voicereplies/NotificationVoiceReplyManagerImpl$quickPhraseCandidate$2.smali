.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.notification.voicereplies.NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2"
    f = "NotificationVoiceReplyManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    check-cast p2, Ljava/util/List;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;

    invoke-direct {v0, p0, p3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl$quickPhraseCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    :cond_0
    move p0, v2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifKey:Ljava/lang/String;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p0, v3

    :goto_0
    if-eqz p0, :cond_3

    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    return-object p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
