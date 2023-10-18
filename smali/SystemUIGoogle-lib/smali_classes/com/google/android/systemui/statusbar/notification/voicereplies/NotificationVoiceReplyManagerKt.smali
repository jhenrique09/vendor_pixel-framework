.class public abstract Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final getHeadsUpEvents(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$headsUpEvents$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$headsUpEvents$1;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
