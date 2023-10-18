.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$headsUpEvents$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $listener:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$headsUpEvents$1$listener$1;

.field final synthetic $this_headsUpEvents:Lcom/android/systemui/statusbar/policy/HeadsUpManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$headsUpEvents$1$listener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$headsUpEvents$1$1;->$this_headsUpEvents:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$headsUpEvents$1$1;->$listener:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$headsUpEvents$1$listener$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$headsUpEvents$1$1;->$this_headsUpEvents:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$headsUpEvents$1$1;->$listener:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$headsUpEvents$1$listener$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
