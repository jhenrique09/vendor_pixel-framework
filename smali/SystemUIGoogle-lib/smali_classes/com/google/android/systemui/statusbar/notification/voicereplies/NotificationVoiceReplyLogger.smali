.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final eventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method
