.class public final Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final card:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

.field public final legacyCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

.field public final position:I

.field public target:Landroid/app/smartspace/SmartspaceTarget;


# direct methods
.method public constructor <init>(ILcom/google/android/systemui/smartspace/BcSmartspaceCard;Landroid/app/smartspace/SmartspaceTarget;Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->position:I

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->legacyCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->target:Landroid/app/smartspace/SmartspaceTarget;

    iput-object p4, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    return-void
.end method
