package com.coui.appcompat.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.preference.PreferenceCategory;
import androidx.preference.l;
import com.coui.appcompat.accessibilityutil.COUIAccessibilityUtil;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.reddot.COUIHintRedDot;
import com.coui.appcompat.rippleutil.COUIRippleDrawableUtil;
import com.coui.appcompat.state.COUIMaskRippleDrawable;
import com.coui.appcompat.textviewcompatutil.COUITextViewCompatUtil;
import com.support.appcompat.R$attr;
import com.support.preference.R$dimen;
import com.support.preference.R$id;
import com.support.preference.R$layout;
import com.support.preference.R$styleable;
import t.k;

/* JADX INFO: loaded from: classes.dex */
public class COUIPreferenceCategory extends PreferenceCategory {
    public static final int MARGIN_TYPE_LARGE = 0;
    public static final int MARGIN_TYPE_SMALL = 1;
    public static final int MARGIN_TYPE_ZERO = 2;
    private static final String TAG = "COUIPreferenceCategory";
    private static final float TITLE_LARGE_TEXTSIZE = 16.0f;
    public static final int TITLE_MARGIN_START_TYPE_LARGE = 1;
    public static final int TITLE_MARGIN_START_TYPE_SMALL = 0;
    private static final float TITLE_MEDIUM_TEXTSIZE = 14.0f;
    private static final float TITLE_SMALL_TEXTSIZE = 12.0f;
    public static final int TITLE_TYPE_LARGE = 2;
    public static final int TITLE_TYPE_MEDIUM = 1;
    public static final int TITLE_TYPE_SMALL = 0;
    private Context mContext;
    private IGetWidgetLayoutListener mGetWidgetLayoutListener;
    private int mHorizontalMarginType;
    private int mIconInRight;
    private int mIconWithTitle;
    private View.OnClickListener mItemviewClickListener;
    private int mLayoutTitleMarginEndLarge;
    private int mLayoutTitleMarginStartLarge;
    private int mLayoutTitleMarginStartSmall;
    private ArrayMap<Integer, Integer> mMarginEndMap;
    private int mMarginTopType;
    private COUIMaskRippleDrawable mMaskRippleDrawable;
    private String mRightIconContentDescription;
    private String mTextInReddot;
    private String mTextInRight;
    private View.OnClickListener mTitleIconClickListener;
    private String mTitleIconContentDescription;
    private boolean mTitleOnly;
    private TextView mTitleTextView;
    private int mTitleType;
    private View mWidgetLayout;
    private View.OnClickListener mWidgetLayoutClickListener;
    private int mWidgetLayoutRes;

    public interface IGetWidgetLayoutListener {
        void widgetInflated(View view);
    }

    public COUIPreferenceCategory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHorizontalMarginType = 1;
        this.mTitleType = 0;
        this.mMarginTopType = 0;
        this.mTitleTextView = null;
        this.mTitleOnly = false;
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPreferenceCategory, 0, 0);
        this.mTextInRight = typedArrayObtainStyledAttributes.getString(R$styleable.COUIPreferenceCategory_text_in_right);
        this.mIconInRight = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUIPreferenceCategory_icon_in_right, 0);
        this.mIconWithTitle = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUIPreferenceCategory_icon_with_title, 0);
        this.mTextInReddot = typedArrayObtainStyledAttributes.getString(R$styleable.COUIPreferenceCategory_text_in_reddot);
        this.mHorizontalMarginType = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIPreferenceCategory_title_margin_start_type, this.mHorizontalMarginType);
        this.mTitleType = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIPreferenceCategory_title_type, this.mTitleType);
        this.mMarginTopType = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIPreferenceCategory_top_margin_type, this.mMarginTopType);
        this.mTitleIconContentDescription = typedArrayObtainStyledAttributes.getString(R$styleable.COUIPreferenceCategory_icon_with_title_content_description);
        this.mRightIconContentDescription = typedArrayObtainStyledAttributes.getString(R$styleable.COUIPreferenceCategory_icon_in_right_content_description);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, androidx.preference.R$styleable.Preference, 0, 0);
        this.mWidgetLayoutRes = k.l(typedArrayObtainStyledAttributes2, androidx.preference.R$styleable.Preference_widgetLayout, androidx.preference.R$styleable.Preference_android_widgetLayout, 0);
        typedArrayObtainStyledAttributes2.recycle();
        this.mLayoutTitleMarginStartLarge = context.getResources().getDimensionPixelSize(R$dimen.support_preference_category_layout_title_margin_start_large);
        this.mLayoutTitleMarginStartSmall = context.getResources().getDimensionPixelSize(R$dimen.support_preference_category_layout_title_margin_start_small);
        this.mLayoutTitleMarginEndLarge = context.getResources().getDimensionPixelSize(R$dimen.support_preference_category_layout_title_margin_end_large);
        ArrayMap<Integer, Integer> arrayMap = new ArrayMap<>();
        this.mMarginEndMap = arrayMap;
        arrayMap.put(Integer.valueOf(R$layout.coui_preference_category_widget_layout_checkbox), 0);
        this.mMarginEndMap.put(Integer.valueOf(R$layout.coui_preference_category_widget_layout_loading), 0);
        this.mMarginEndMap.put(Integer.valueOf(R$layout.coui_preference_category_widget_layout_singleicon), Integer.valueOf(context.getResources().getDimensionPixelSize(R$dimen.coui_preference_category_Loading_marginend)));
        this.mMarginEndMap.put(Integer.valueOf(R$layout.coui_preference_category_widget_layout_textbutton), Integer.valueOf(context.getResources().getDimensionPixelSize(R$dimen.coui_preference_category_textbutton_marginend)));
        this.mMarginEndMap.put(Integer.valueOf(R$layout.coui_preference_category_widget_layout_textwithicon), 0);
        ensureMaskRippleDrawable();
    }

    private void ensureMaskRippleDrawable() {
        if (this.mMaskRippleDrawable == null) {
            COUIMaskRippleDrawable cOUIMaskRippleDrawable = new COUIMaskRippleDrawable(getContext());
            this.mMaskRippleDrawable = cOUIMaskRippleDrawable;
            cOUIMaskRippleDrawable.setCircleRippleMask(getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_widget_layout_single_icon_radius));
        }
    }

    private void initEndRect(l lVar) {
        TextView textView;
        TextView textView2;
        int i10;
        int i11;
        View viewB = lVar.b(R.id.widget_frame);
        if (this.mWidgetLayoutRes != 0) {
            if (!(viewB instanceof LinearLayout)) {
                return;
            }
            LinearLayout linearLayout = (LinearLayout) viewB;
            if (linearLayout != null && linearLayout.getChildCount() > 0) {
                linearLayout.removeAllViews();
            }
            View viewInflate = LayoutInflater.from(this.mContext).inflate(this.mWidgetLayoutRes, (ViewGroup) linearLayout, false);
            this.mWidgetLayout = viewInflate;
            if (viewInflate == null) {
                Log.e(TAG, "inflate mWidgetLayoutRes failed");
                return;
            }
            this.mTitleOnly = false;
            if (viewInflate.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mWidgetLayout.getLayoutParams();
                if (this.mHorizontalMarginType == 0) {
                    if (marginLayoutParams.getMarginEnd() != this.mMarginEndMap.get(Integer.valueOf(this.mWidgetLayoutRes)).intValue()) {
                        marginLayoutParams.setMarginEnd(this.mMarginEndMap.get(Integer.valueOf(this.mWidgetLayoutRes)).intValue());
                        this.mWidgetLayout.setLayoutParams(marginLayoutParams);
                    }
                } else if (marginLayoutParams.getMarginEnd() != this.mMarginEndMap.get(Integer.valueOf(this.mWidgetLayoutRes)).intValue() + this.mLayoutTitleMarginEndLarge) {
                    marginLayoutParams.setMarginEnd(this.mMarginEndMap.get(Integer.valueOf(this.mWidgetLayoutRes)).intValue() + this.mLayoutTitleMarginEndLarge);
                    this.mWidgetLayout.setLayoutParams(marginLayoutParams);
                }
            }
            if (this.mGetWidgetLayoutListener != null) {
                this.mWidgetLayout.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.coui.appcompat.preference.COUIPreferenceCategory.1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view) {
                        COUIPreferenceCategory.this.mWidgetLayout.post(new Runnable() { // from class: com.coui.appcompat.preference.COUIPreferenceCategory.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                COUIPreferenceCategory.this.mGetWidgetLayoutListener.widgetInflated(COUIPreferenceCategory.this.mWidgetLayout);
                            }
                        });
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view) {
                        view.removeOnAttachStateChangeListener(this);
                    }
                });
            }
            if (!(this.mWidgetLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.mWidgetLayout.getLayoutParams();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(marginLayoutParams2.width, marginLayoutParams2.height);
            layoutParams.gravity = 16;
            layoutParams.setMarginStart(marginLayoutParams2.getMarginStart());
            layoutParams.topMargin = marginLayoutParams2.topMargin;
            layoutParams.setMarginEnd(marginLayoutParams2.getMarginEnd());
            layoutParams.bottomMargin = marginLayoutParams2.bottomMargin;
            linearLayout.addView(this.mWidgetLayout, layoutParams);
            linearLayout.setVisibility(0);
            if (this.mWidgetLayoutClickListener != null) {
                if (this.mWidgetLayoutRes == R$layout.coui_preference_category_widget_layout_singleicon) {
                    ensureMaskRippleDrawable();
                    linearLayout.getChildAt(0).setBackground(this.mMaskRippleDrawable);
                } else {
                    COUITextViewCompatUtil.setPressRippleDrawable(this.mWidgetLayout, false);
                }
                this.mWidgetLayout.setOnClickListener(this.mWidgetLayoutClickListener);
            } else {
                View.OnClickListener onClickListener = this.mItemviewClickListener;
                if (onClickListener != null) {
                    lVar.itemView.setOnClickListener(onClickListener);
                    COUIRippleDrawableUtil.setPressRippleDrawable(lVar.itemView, 0, false);
                }
            }
            int i12 = this.mWidgetLayoutRes;
            if (i12 == R$layout.coui_preference_category_widget_layout_textwithicon) {
                textView2 = (TextView) linearLayout.findViewById(R$id.text_in_composition);
                if (textView2 != null && !TextUtils.isEmpty(this.mTextInRight)) {
                    textView2.setText(this.mTextInRight);
                    textView2.setVisibility(0);
                }
                if (this.mWidgetLayoutClickListener == null || rightTextfixSecondaryColor()) {
                    textView2.setTextColor(COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorSecondNeutral, 0));
                } else {
                    textView2.setTextColor(COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPrimaryNeutral, 0));
                }
                ImageView imageView = (ImageView) linearLayout.findViewById(R$id.icon_in_composition);
                if (imageView != null && (i11 = this.mIconInRight) != 0) {
                    imageView.setImageResource(i11);
                    imageView.setVisibility(0);
                }
            } else if (i12 == R$layout.coui_preference_category_widget_layout_textbutton) {
                textView2 = (TextView) linearLayout.findViewById(R$id.text_button);
                if (textView2 != null && !TextUtils.isEmpty(this.mTextInRight)) {
                    textView2.setText(this.mTextInRight);
                    textView2.setVisibility(0);
                    COUITextViewCompatUtil.setPressRippleDrawable(textView2);
                }
            } else {
                if (i12 == R$layout.coui_preference_category_widget_layout_singleicon) {
                    ImageView imageView2 = (ImageView) linearLayout.findViewById(R$id.singleIcon);
                    if (imageView2 != null && (i10 = this.mIconInRight) != 0) {
                        imageView2.setImageResource(i10);
                        imageView2.setVisibility(0);
                        if (!TextUtils.isEmpty(this.mRightIconContentDescription)) {
                            imageView2.setContentDescription(this.mRightIconContentDescription);
                        }
                    }
                } else if (i12 == R$layout.coui_preference_category_widget_layout_loading) {
                    textView2 = (TextView) this.mWidgetLayout.findViewById(R$id.text_in_loading);
                }
                textView2 = null;
            }
            if (textView2 != null) {
                if (this.mTitleType == 0) {
                    textView2.setTextSize(2, 12.0f);
                } else {
                    textView2.setTextSize(2, 14.0f);
                    linearLayout.getChildAt(0).setMinimumHeight(getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_widget_layout_min_height_when_title_isnot_small));
                }
                textView2.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.coui.appcompat.preference.COUIPreferenceCategory.2
                    @Override // android.view.View.AccessibilityDelegate
                    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                        accessibilityNodeInfo.setClassName(COUIAccessibilityUtil.BUTTON_CLASS_NAME);
                    }
                });
            }
        } else if (viewB != null) {
            viewB.setVisibility(8);
        }
        if (this.mTitleOnly && (textView = this.mTitleTextView) != null && (textView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.mTitleTextView.getLayoutParams();
            marginLayoutParams3.setMarginEnd(marginLayoutParams3.getMarginStart());
            this.mTitleTextView.setLayoutParams(marginLayoutParams3);
        }
    }

    private void initStartRect(l lVar) {
        ImageView imageView;
        boolean z10;
        this.mTitleOnly = true;
        View viewB = lVar.b(R.id.title);
        if (viewB instanceof TextView) {
            this.mTitleTextView = (TextView) viewB;
        }
        View viewB2 = lVar.b(R$id.icon_with_title);
        if (viewB2 instanceof ImageView) {
            imageView = (ImageView) viewB2;
            View.OnClickListener onClickListener = this.mTitleIconClickListener;
            if (onClickListener != null) {
                imageView.setOnClickListener(onClickListener);
                ensureMaskRippleDrawable();
                imageView.setBackground(this.mMaskRippleDrawable);
            }
            if (!TextUtils.isEmpty(this.mTitleIconContentDescription)) {
                imageView.setContentDescription(this.mTitleIconContentDescription);
            }
        } else {
            imageView = null;
        }
        View viewB3 = lVar.b(R$id.reddot_with_title);
        COUIHintRedDot cOUIHintRedDot = viewB3 instanceof COUIHintRedDot ? (COUIHintRedDot) viewB3 : null;
        if (imageView == null) {
            z10 = false;
        } else {
            int i10 = this.mIconWithTitle;
            if (i10 != 0) {
                imageView.setImageResource(i10);
                imageView.setVisibility(0);
                this.mTitleOnly = false;
                if (viewB.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewB.getLayoutParams();
                    if (this.mTitleType == 2) {
                        marginLayoutParams.setMarginEnd(getContext().getResources().getDimensionPixelSize(R$dimen.coui_category_title_margin_end_with_icon_large));
                    } else {
                        marginLayoutParams.setMarginEnd(getContext().getResources().getDimensionPixelSize(R$dimen.coui_category_title_margin_end_with_icon_small));
                    }
                    viewB.setLayoutParams(marginLayoutParams);
                }
                z10 = true;
            } else {
                imageView.setVisibility(8);
                z10 = false;
            }
        }
        if (cOUIHintRedDot != null) {
            if (TextUtils.isEmpty(this.mTextInReddot) || z10) {
                cOUIHintRedDot.setVisibility(8);
            } else {
                cOUIHintRedDot.setPointMode(2);
                cOUIHintRedDot.setPointText(this.mTextInReddot);
                cOUIHintRedDot.setVisibility(0);
                this.mTitleOnly = false;
                if ((viewB.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) && (viewB.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) viewB.getLayoutParams();
                    marginLayoutParams2.setMarginEnd(getContext().getResources().getDimensionPixelSize(R$dimen.coui_category_title_pading_end_with_reddot_default));
                    viewB.setLayoutParams(marginLayoutParams2);
                }
            }
        }
        TextView textView = this.mTitleTextView;
        if (textView != null && textView.getVisibility() == 0) {
            int i11 = this.mTitleType;
            if (i11 == 0) {
                this.mTitleTextView.setTextSize(2, 12.0f);
                this.mTitleTextView.setMinHeight(getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_category_text_height));
                if (z10) {
                    this.mTitleTextView.setTextColor(COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPrimaryNeutral));
                } else {
                    this.mTitleTextView.setTextColor(COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorSecondNeutral));
                }
            } else if (i11 == 2) {
                this.mTitleTextView.setTextSize(2, 16.0f);
                this.mTitleTextView.setMinHeight(getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_category_text_height_large));
                this.mTitleTextView.setTextColor(COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPrimaryNeutral));
            } else {
                this.mTitleTextView.setTextSize(2, 14.0f);
                this.mTitleTextView.setMinHeight(getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_category_text_height_medium));
                this.mTitleTextView.setTextColor(COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPrimaryNeutral));
            }
            if (this.mTitleTextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.mTitleTextView.getLayoutParams();
                if (this.mHorizontalMarginType == 0) {
                    int marginStart = marginLayoutParams3.getMarginStart();
                    int i12 = this.mLayoutTitleMarginStartSmall;
                    if (marginStart != i12) {
                        marginLayoutParams3.setMarginStart(i12);
                    }
                } else {
                    this.mTitleTextView.setLayoutParams(marginLayoutParams3);
                    int marginStart2 = marginLayoutParams3.getMarginStart();
                    int i13 = this.mLayoutTitleMarginStartLarge;
                    if (marginStart2 != i13) {
                        marginLayoutParams3.setMarginStart(i13);
                    }
                }
                this.mTitleTextView.setLayoutParams(marginLayoutParams3);
                View view = lVar.itemView;
                view.setPadding(view.getPaddingStart(), 0, lVar.itemView.getPaddingEnd(), 0);
                int i14 = this.mTitleType;
                if (i14 == 0) {
                    marginLayoutParams3.topMargin = getContext().getResources().getDimensionPixelSize(R$dimen.support_preference_category_layout_title_margin_end_new);
                    marginLayoutParams3.bottomMargin = getContext().getResources().getDimensionPixelSize(R$dimen.support_preference_category_layout_title_margin_end_new);
                } else if (i14 == 2) {
                    marginLayoutParams3.topMargin = getContext().getResources().getDimensionPixelSize(R$dimen.coui_common_category_text_padding_top_Large_style);
                    marginLayoutParams3.bottomMargin = getContext().getResources().getDimensionPixelSize(R$dimen.coui_common_category_text_padding_bottom_large_style);
                } else {
                    marginLayoutParams3.topMargin = getContext().getResources().getDimensionPixelSize(R$dimen.coui_common_category_text_padding_top_medium_style);
                    marginLayoutParams3.bottomMargin = getContext().getResources().getDimensionPixelSize(R$dimen.coui_common_category_text_padding_bottom_medium_style);
                }
                this.mTitleTextView.setLayoutParams(marginLayoutParams3);
            }
        }
        if (lVar.itemView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) lVar.itemView.getLayoutParams();
            int i15 = this.mMarginTopType;
            if (i15 == 0) {
                marginLayoutParams4.topMargin = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_category_margintop_large);
            } else if (i15 == 1) {
                marginLayoutParams4.topMargin = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_category_margintop_small);
            } else if (i15 == 2) {
                marginLayoutParams4.topMargin = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_category_margintop_zero);
            }
        }
    }

    public void getWidgetLayout(IGetWidgetLayoutListener iGetWidgetLayoutListener) {
        View view = this.mWidgetLayout;
        if (view != null) {
            iGetWidgetLayoutListener.widgetInflated(view);
        } else {
            this.mGetWidgetLayoutListener = iGetWidgetLayoutListener;
        }
    }

    @Override // androidx.preference.PreferenceCategory, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        initStartRect(lVar);
        initEndRect(lVar);
    }

    protected boolean rightTextfixSecondaryColor() {
        return false;
    }

    public void setHorizontalMarginType(int i10) {
        if (this.mHorizontalMarginType != i10) {
            this.mHorizontalMarginType = i10;
            notifyChanged();
        }
    }

    public void setIconInRight(int i10) {
        if (this.mIconInRight != i10) {
            this.mIconInRight = i10;
            notifyChanged();
        }
    }

    public void setIconWithTitle(int i10) {
        this.mIconWithTitle = i10;
    }

    public void setItemViewLayoutClickListener(View.OnClickListener onClickListener) {
        this.mItemviewClickListener = onClickListener;
    }

    public void setMarginTopType(int i10) {
        if (this.mMarginTopType != i10) {
            this.mMarginTopType = i10;
            notifyChanged();
        }
    }

    public void setRightIconContentDescription(String str) {
        this.mRightIconContentDescription = str;
        notifyChanged();
    }

    public void setTextInReddot(String str) {
        this.mTextInReddot = str;
    }

    public void setTextInRight(String str) {
        if (TextUtils.equals(str, this.mTextInRight)) {
            return;
        }
        this.mTextInRight = str;
        notifyChanged();
    }

    public void setTitleIconClickListener(View.OnClickListener onClickListener) {
        this.mTitleIconClickListener = onClickListener;
    }

    public void setTitleIconContentDescription(String str) {
        this.mTitleIconContentDescription = str;
        notifyChanged();
    }

    public void setTitleType(int i10) {
        if (this.mTitleType != i10) {
            this.mTitleType = i10;
            notifyChanged();
        }
    }

    public void setWidgetLayoutClickListener(View.OnClickListener onClickListener) {
        this.mWidgetLayoutClickListener = onClickListener;
    }

    protected void setWidgetLayoutRes(int i10) {
        this.mWidgetLayoutRes = i10;
    }

    protected View getWidgetLayout() {
        return this.mWidgetLayout;
    }
}
