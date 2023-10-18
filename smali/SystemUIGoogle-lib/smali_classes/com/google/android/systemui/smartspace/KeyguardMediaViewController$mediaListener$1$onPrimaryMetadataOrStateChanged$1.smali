.class public final Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $metadata:Landroid/media/MediaMetadata;

.field public final synthetic $state:I

.field public final synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;Landroid/media/MediaMetadata;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;->$metadata:Landroid/media/MediaMetadata;

    iput p3, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;->$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;->$metadata:Landroid/media/MediaMetadata;

    iget p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;->$state:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    iput-object v2, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->title:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    iget-object p0, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->smartspaceView:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    if-eqz p0, :cond_6

    invoke-interface {p0, v2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V

    goto/16 :goto_3

    :cond_0
    if-eqz v1, :cond_1

    const-string p0, "android.media.metadata.TITLE"

    invoke-virtual {v1, p0}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f130619

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->title:Ljava/lang/CharSequence;

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    iput-object p0, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    if-eqz p0, :cond_5

    new-instance v1, Landroid/app/smartspace/SmartspaceAction$Builder;

    const-string v3, "deviceMediaTitle"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v3, p0}, Landroid/app/smartspace/SmartspaceAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Landroid/app/smartspace/SmartspaceAction$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/app/smartspace/SmartspaceAction$Builder;

    move-result-object p0

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/smartspace/SmartspaceAction$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/smartspace/SmartspaceAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction$Builder;->build()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p0

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    new-instance v3, Landroid/app/smartspace/SmartspaceTarget$Builder;

    const-string v4, "deviceMedia"

    iget-object v5, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->mediaComponent:Landroid/content/ComponentName;

    invoke-direct {v3, v4, v5, v1}, Landroid/app/smartspace/SmartspaceTarget$Builder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/16 v1, 0x29

    invoke-virtual {v3, v1}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setHeaderAction(Landroid/app/smartspace/SmartspaceAction;)Landroid/app/smartspace/SmartspaceTarget$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->build()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object p0

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->smartspaceView:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    if-eqz v1, :cond_5

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_5
    move-object p0, v2

    :goto_2
    if-nez p0, :cond_6

    iput-object v2, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->title:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    iget-object p0, v0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->smartspaceView:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    if-eqz p0, :cond_6

    invoke-interface {p0, v2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V

    :cond_6
    :goto_3
    return-void
.end method
