.class public Lcom/google/android/systemui/smartspace/DateSmartspaceView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAodSettingsObserver:Lcom/google/android/systemui/smartspace/DateSmartspaceView$1;

.field public mCurrentTextColor:I

.field public mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public final mDateAction:Landroid/app/smartspace/SmartspaceAction;

.field public final mDateTarget:Landroid/app/smartspace/SmartspaceTarget;

.field public mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

.field public final mDndIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

.field public mDndImageView:Landroid/widget/ImageView;

.field public mDozeAmount:F

.field public mIsAodEnabled:Z

.field public mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

.field public final mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

.field public final mNextAlarmIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

.field public mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public mPrimaryTextColor:I

.field public mUiSurface:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "DateSmartspaceView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mUiSurface:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDozeAmount:F

    new-instance p2, Landroid/app/smartspace/SmartspaceTarget$Builder;

    new-instance p3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "date_card_794317_92634"

    invoke-direct {p2, v1, p3, v0}, Landroid/app/smartspace/SmartspaceTarget$Builder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget$Builder;->build()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateTarget:Landroid/app/smartspace/SmartspaceTarget;

    new-instance p2, Landroid/app/smartspace/SmartspaceAction$Builder;

    const-string p3, "dateId"

    const-string v0, "Date"

    invoke-direct {p2, p3, v0}, Landroid/app/smartspace/SmartspaceAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getOpenCalendarIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/smartspace/SmartspaceAction$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/smartspace/SmartspaceAction$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction$Builder;->build()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateAction:Landroid/app/smartspace/SmartspaceAction;

    new-instance p2, Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    invoke-direct {p2}, Lcom/google/android/systemui/smartspace/BcNextAlarmData;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    new-instance p2, Lcom/google/android/systemui/smartspace/DateSmartspaceView$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/google/android/systemui/smartspace/DateSmartspaceView$1;-><init>(Lcom/google/android/systemui/smartspace/DateSmartspaceView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/DateSmartspaceView$1;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const p3, 0x7f140256

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance p2, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    new-instance p2, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 8

    const-string v0, "doze_always_on"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mUiSurface:Ljava/lang/String;

    const-string v2, "lockscreen"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/DateSmartspaceView$1;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "DateSmartspaceView"

    const-string v4, "Unable to register DOZE_ALWAYS_ON content observer: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {v3, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mIsAodEnabled:Z

    :cond_1
    new-instance v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v1

    iput v1, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mInstanceId:I

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v1

    iput v1, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mFeatureType:I

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mUiSurface:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDozeAmount:F

    invoke-static {v2, v1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-static {v1, v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->getUid(Landroid/content/pm/PackageManager;Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v1

    iput v1, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mUid:I

    new-instance v7, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    invoke-direct {v7, v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;)V

    iput-object v7, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateTarget:Landroid/app/smartspace/SmartspaceTarget;

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateAction:Landroid/app/smartspace/SmartspaceAction;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    move-object v5, p0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;I)V

    move-object v5, v0

    :goto_1
    const-string v6, "DateSmartspaceView"

    invoke-static/range {v2 .. v7}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Ljava/lang/String;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mAodSettingsObserver:Lcom/google/android/systemui/smartspace/DateSmartspaceView$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a021f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    const v0, 0x7f0a0092

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const v0, 0x7f0a026a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public final registerDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    return-void
.end method

.method public final setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndImageView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndImageView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->updateColorForExtras()V

    return-void
.end method

.method public final setDozeAmount(F)V
    .locals 3

    iput p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDozeAmount:F

    iget v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mPrimaryTextColor:I

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mCurrentTextColor:I

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->updateColorForExtras()V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mUiSurface:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDozeAmount:F

    invoke-static {v0, p1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mIsAodEnabled:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-boolean v0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", setDozeAmount: Logging SMARTSPACE_CARD_SEEN, loggingSurface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateSmartspaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    iget v2, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mInstanceId:I

    iput v2, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mInstanceId:I

    iget v2, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mFeatureType:I

    iput v2, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mFeatureType:I

    iput p1, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    iget v1, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    iput v1, v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mUid:I

    new-instance v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    invoke-direct {v1, v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;)V

    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;->log(Lcom/google/android/systemui/smartspace/EventEnum;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    invoke-direct {v1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;-><init>()V

    const-string v2, "upcoming_alarm_card_94510_12684"

    invoke-static {v2}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mInstanceId:I

    const/16 v2, 0x17

    iput v2, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mFeatureType:I

    iput p1, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mDisplaySurface:I

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mLoggingInfo:Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    iget p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->mUid:I

    iput p0, v1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->mUid:I

    new-instance p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    invoke-direct {p0, v1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;-><init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;)V

    invoke-static {v0, p0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;->log(Lcom/google/android/systemui/smartspace/EventEnum;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V

    :cond_4
    return-void
.end method

.method public final setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    sput-object p1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method

.method public final setIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;)V
    .locals 0

    sput-object p1, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->sIntentStarter:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;

    return-void
.end method

.method public final setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    iput-object p1, v0, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    iput-object p2, v0, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mDescription:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    iget-object p1, p1, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13009d

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->getDescription(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    iget-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    iget-object p2, p2, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {p1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    iget-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez v1, :cond_2

    move-object v3, v0

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;I)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mUiSurface:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDozeAmount:F

    invoke-static {v2, v1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v0, v3, v1}, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;I)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmData:Lcom/google/android/systemui/smartspace/BcNextAlarmData;

    iget-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez v1, :cond_3

    move-object v2, v0

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;I)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mUiSurface:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDozeAmount:F

    invoke-static {v3, v1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(FLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/google/android/systemui/smartspace/BcNextAlarmData;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/uitemplatedata/TapAction;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;I)V

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->updateColorForExtras()V

    return-void
.end method

.method public final setPrimaryTextColor(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mPrimaryTextColor:I

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDozeAmount:F

    invoke-static {p1, v0, v1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mCurrentTextColor:I

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->updateColorForExtras()V

    return-void
.end method

.method public final setUiSurface(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mUiSurface:Ljava/lang/String;

    const-string v0, "lockscreen"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDateView:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->setUpdatesOnAod()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must call before attaching view to window."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateColorForExtras()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmTextView:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mCurrentTextColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mNextAlarmIconDrawable:Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;

    iget v1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mCurrentTextColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/DoubleShadowIconDrawable;->setTint(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mDndImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->mCurrentTextColor:I

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method
