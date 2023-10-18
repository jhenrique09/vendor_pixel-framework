.class public final Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;
.super Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;
.source ""


# static fields
.field public static final SCREENSHOT_INTERACTION_TYPE_MAP:Lcom/google/common/collect/ImmutableMap;

.field public static final SCREENSHOT_OP_MAP:Lcom/google/common/collect/ImmutableMap;

.field public static final SCREENSHOT_OP_STATUS_MAP:Lcom/google/common/collect/ImmutableMap;


# instance fields
.field public final mClient:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;->RETRIEVE_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;

    sget-object v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;->RETRIEVE_SMART_ACTIONS:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;->REQUEST_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;

    sget-object v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;->REQUEST_SMART_ACTIONS:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;->WAIT_FOR_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;

    sget-object v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;->WAIT_FOR_SMART_ACTIONS:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->SCREENSHOT_OP_MAP:Lcom/google/common/collect/ImmutableMap;

    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->SUCCESS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    sget-object v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;->SUCCESS:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->ERROR:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    sget-object v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;->ERROR:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;->TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;

    sget-object v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;->TIMEOUT:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->SCREENSHOT_OP_STATUS_MAP:Lcom/google/common/collect/ImmutableMap;

    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotSmartActionType;->REGULAR_SMART_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotSmartActionType;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->SCREENSHOT_NOTIFICATION:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotSmartActionType;->QUICK_SHARE_ACTION:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotSmartActionType;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->QUICK_SHARE:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->SCREENSHOT_INTERACTION_TYPE_MAP:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;-><init>()V

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->mClient:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    return-void
.end method


# virtual methods
.method public completeFuture(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V
    .locals 1

    const-string p0, "ScreenshotNotificationActions"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final getActions(Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/content/ComponentName;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotSmartActionType;Landroid/os/UserHandle;)Ljava/util/concurrent/CompletableFuture;
    .locals 19

    new-instance v6, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v6}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const-string v2, "ScreenshotActionsGoogle"

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Bitmap expected: Hardware, Bitmap found: %s. Returning empty list."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v0, "Calling AiAi to obtain screenshot notification smart actions."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    sget-object v0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->SCREENSHOT_INTERACTION_TYPE_MAP:Lcom/google/common/collect/ImmutableMap;

    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->SCREENSHOT_NOTIFICATION:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    move-object/from16 v2, p5

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    new-instance v15, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;-><init>(Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;Ljava/util/concurrent/CompletableFuture;JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->mClient:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    iget-boolean v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;->isAiAiVersionSupported:Z

    if-nez v1, :cond_1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v15, v0}, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;->onResult(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;->bundleUtils:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/common/BundleUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v1, "CONTEXT_IMAGE_BUNDLE_VERSION_KEY"

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "CONTEXT_IMAGE_PRIMARY_TASK_KEY"

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "CONTEXT_IMAGE_PACKAGE_NAME_KEY"

    invoke-virtual {v10, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CONTEXT_IMAGE_ACTIVITY_NAME_KEY"

    invoke-virtual {v10, v1, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CONTEXT_IMAGE_CAPTURE_TIME_MS_KEY"

    invoke-virtual {v10, v1, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "CONTEXT_IMAGE_BITMAP_URI_KEY"

    move-object/from16 v3, p2

    invoke-virtual {v10, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "android.contentsuggestions.extra.BITMAP"

    move-object/from16 v4, p3

    invoke-virtual {v10, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;

    invoke-direct {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;-><init>()V

    iput-object v7, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;->interactionType:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;->disallowCopyPaste:Z

    iput v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;->versionCode:I

    iput-boolean v2, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;->isPrimaryTask:Z

    new-instance v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$ExternalSyntheticLambda2;

    move-object v7, v2

    move-object v8, v0

    move-object v4, v15

    move-object v15, v1

    move-object/from16 v16, p6

    move-object/from16 v17, p2

    move-object/from16 v18, v4

    invoke-direct/range {v7 .. v18}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/InteractionContextParcelables$InteractionContext;Landroid/os/UserHandle;Landroid/net/Uri;Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle$1;)V

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;->serviceWrapper:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;->asyncExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object v6
.end method

.method public final notifyAction(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    iget-object p0, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->mClient:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;->serviceWrapper:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;

    invoke-virtual {p0, p1, p2, v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;->notifyInteractionAsync(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;Ljava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public final notifyOp(Ljava/lang/String;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOp;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider$ScreenshotOpStatus;J)V
    .locals 7

    sget-object v0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->SCREENSHOT_OP_MAP:Lcom/google/common/collect/ImmutableMap;

    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;->OP_UNKNOWN:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;

    invoke-virtual {v0, p2, v1}, Lcom/google/common/collect/ImmutableMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;

    sget-object p2, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->SCREENSHOT_OP_STATUS_MAP:Lcom/google/common/collect/ImmutableMap;

    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;->OP_STATUS_UNKNOWN:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;

    invoke-virtual {p2, p3, v0}, Lcom/google/common/collect/ImmutableMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;

    iget-object p0, p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;->mClient:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$ExternalSyntheticLambda1;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOp;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ScreenshotOpStatus;J)V

    const/4 p3, 0x0

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceClient;->serviceWrapper:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapperImpl;->notifyInteractionAsync(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$FeedbackBatch;Ljava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method
