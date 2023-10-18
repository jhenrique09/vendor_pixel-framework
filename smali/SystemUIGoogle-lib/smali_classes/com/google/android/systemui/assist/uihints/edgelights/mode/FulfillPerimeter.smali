.class public final Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;


# static fields
.field public static final FULFILL_PERIMETER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

.field public mDisappearing:Z

.field public final mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

.field public final mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

.field public mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

.field public final mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

.field public final mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->FULFILL_PERIMETER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mDisappearing:Z

    new-instance v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance v1, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600f4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance v2, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600f5

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-direct {v2, v4}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance v4, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f0600f3

    invoke-virtual {p1, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-direct {v4, p1}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    iput-object v4, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

    filled-new-array {v0, v1, v4, v2}, [Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    return-void
.end method


# virtual methods
.method public final getSubType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final onNewModeRequest(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    return-void
.end method

.method public final start(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setVisibility(I)V

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v12, v7, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    array-length v13, v12

    move v14, v10

    :goto_0
    if-ge v14, v13, :cond_7

    aget-object v15, v12, v14

    const/4 v0, 0x1

    iget-object v1, v7, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object v2, v7, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    if-eq v15, v1, :cond_1

    if-ne v15, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v10

    goto :goto_2

    :cond_1
    :goto_1
    move v1, v0

    :goto_2
    if-eq v15, v2, :cond_3

    iget-object v2, v7, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    if-ne v15, v2, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v16, v10

    goto :goto_4

    :cond_3
    :goto_3
    move/from16 v16, v0

    :goto_4
    sget-object v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v9, v0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v4

    sget-object v2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    if-eqz v1, :cond_4

    invoke-virtual {v9, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    goto :goto_5

    :cond_4
    move v1, v4

    :goto_5
    sub-float v3, v1, v4

    invoke-virtual {v9, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v1

    invoke-virtual {v9, v0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v0

    sub-float v17, v1, v0

    const/4 v0, 0x0

    sub-float v5, v17, v0

    const/4 v6, 0x2

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v18, 0x64

    if-eqz v16, :cond_5

    move-wide/from16 v0, v18

    goto :goto_6

    :cond_5
    const-wide/16 v0, 0x0

    :goto_6
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x1b1

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->FULFILL_PERIMETER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda0;

    move-object/from16 p3, v0

    move-object v10, v1

    move-object/from16 v1, p0

    move-object v9, v2

    move-object v2, v15

    move-object/from16 v20, v12

    move v12, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;Lcom/android/systemui/assist/ui/EdgeLight;FFFLcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez v16, :cond_6

    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_7

    :cond_6
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float v3, v0, v17

    new-array v0, v12, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v0

    add-long v0, v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x2dd

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;Lcom/android/systemui/assist/ui/EdgeLight;FLcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v11, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p2

    move-object/from16 v12, v20

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;

    invoke-direct {v0, v7, v11, v8}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;Landroid/animation/AnimatorSet;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
