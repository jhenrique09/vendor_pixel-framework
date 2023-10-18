.class public final Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper$BundleCallback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;

.field public final synthetic val$future:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic val$screenshotId:Ljava/lang/String;

.field public final synthetic val$startTimeMs:J


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;Ljava/util/concurrent/CompletableFuture;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->this$0:Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;

    iput-object p2, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    iput-wide p3, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->val$startTimeMs:J

    iput-object p5, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->val$screenshotId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->this$0:Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;

    iget-object v1, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->completeFuture(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->val$startTimeMs:J

    sub-long v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Total time taken to get smart actions: %d ms"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenshotActionsGoogle"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->this$0:Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;

    iget-object v5, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->val$screenshotId:Ljava/lang/String;

    sget-object v6, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;->RETRIEVE_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;

    sget-object v7, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->SUCCESS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->notifyOp(Ljava/lang/String;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;J)V

    return-void
.end method
