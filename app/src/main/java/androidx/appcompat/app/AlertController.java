package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.m0;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class AlertController {
    NestedScrollView A;
    private Drawable C;
    private ImageView D;
    private TextView E;
    private TextView F;
    private View G;
    ListAdapter H;
    private int J;
    private int K;
    int L;
    int M;
    int N;
    int O;
    private boolean P;
    Handler R;

    /* JADX INFO: renamed from: a */
    private final Context f247a;

    /* JADX INFO: renamed from: b */
    final o f248b;

    /* JADX INFO: renamed from: c */
    private final Window f249c;

    /* JADX INFO: renamed from: d */
    private final int f250d;

    /* JADX INFO: renamed from: e */
    private CharSequence f251e;

    /* JADX INFO: renamed from: f */
    private CharSequence f252f;

    /* JADX INFO: renamed from: g */
    ListView f253g;

    /* JADX INFO: renamed from: h */
    private View f254h;

    /* JADX INFO: renamed from: i */
    private int f255i;

    /* JADX INFO: renamed from: j */
    private int f256j;

    /* JADX INFO: renamed from: k */
    private int f257k;

    /* JADX INFO: renamed from: l */
    private int f258l;

    /* JADX INFO: renamed from: m */
    private int f259m;

    /* JADX INFO: renamed from: o */
    Button f261o;

    /* JADX INFO: renamed from: p */
    private CharSequence f262p;

    /* JADX INFO: renamed from: q */
    Message f263q;

    /* JADX INFO: renamed from: r */
    private Drawable f264r;

    /* JADX INFO: renamed from: s */
    Button f265s;

    /* JADX INFO: renamed from: t */
    private CharSequence f266t;

    /* JADX INFO: renamed from: u */
    Message f267u;

    /* JADX INFO: renamed from: v */
    private Drawable f268v;

    /* JADX INFO: renamed from: w */
    Button f269w;

    /* JADX INFO: renamed from: x */
    private CharSequence f270x;

    /* JADX INFO: renamed from: y */
    Message f271y;

    /* JADX INFO: renamed from: z */
    private Drawable f272z;

    /* JADX INFO: renamed from: n */
    private boolean f260n = false;
    private int B = 0;
    int I = -1;
    private int Q = 0;
    private final View.OnClickListener S = new a();

    public static class RecycleListView extends ListView {

        /* JADX INFO: renamed from: a */
        private final int f273a;

        /* JADX INFO: renamed from: b */
        private final int f274b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public void a(boolean z10, boolean z11) {
            if (z11 && z10) {
                return;
            }
            setPadding(getPaddingLeft(), z10 ? getPaddingTop() : this.f273a, getPaddingRight(), z11 ? getPaddingBottom() : this.f274b);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecycleListView);
            this.f274b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f273a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.RecycleListView_paddingTopNoTitle, -1);
        }
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            Message messageObtain = (view != alertController.f261o || (message3 = alertController.f263q) == null) ? (view != alertController.f265s || (message2 = alertController.f267u) == null) ? (view != alertController.f269w || (message = alertController.f271y) == null) ? null : Message.obtain(message) : Message.obtain(message2) : Message.obtain(message3);
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.R.obtainMessage(1, alertController2.f248b).sendToTarget();
        }
    }

    public static class b {
        public int A;
        public int B;
        public int C;
        public int D;
        public boolean[] F;
        public boolean G;
        public boolean H;
        public DialogInterface.OnMultiChoiceClickListener J;
        public Cursor K;
        public String L;
        public String M;
        public boolean N;
        public AdapterView.OnItemSelectedListener O;

        /* JADX INFO: renamed from: a */
        public final Context f276a;

        /* JADX INFO: renamed from: b */
        public final LayoutInflater f277b;

        /* JADX INFO: renamed from: d */
        public Drawable f279d;

        /* JADX INFO: renamed from: f */
        public CharSequence f281f;

        /* JADX INFO: renamed from: g */
        public View f282g;

        /* JADX INFO: renamed from: h */
        public CharSequence f283h;

        /* JADX INFO: renamed from: i */
        public CharSequence f284i;

        /* JADX INFO: renamed from: j */
        public Drawable f285j;

        /* JADX INFO: renamed from: k */
        public DialogInterface.OnClickListener f286k;

        /* JADX INFO: renamed from: l */
        public CharSequence f287l;

        /* JADX INFO: renamed from: m */
        public Drawable f288m;

        /* JADX INFO: renamed from: n */
        public DialogInterface.OnClickListener f289n;

        /* JADX INFO: renamed from: o */
        public CharSequence f290o;

        /* JADX INFO: renamed from: p */
        public Drawable f291p;

        /* JADX INFO: renamed from: q */
        public DialogInterface.OnClickListener f292q;

        /* JADX INFO: renamed from: s */
        public DialogInterface.OnCancelListener f294s;

        /* JADX INFO: renamed from: t */
        public DialogInterface.OnDismissListener f295t;

        /* JADX INFO: renamed from: u */
        public DialogInterface.OnKeyListener f296u;

        /* JADX INFO: renamed from: v */
        public CharSequence[] f297v;

        /* JADX INFO: renamed from: w */
        public ListAdapter f298w;

        /* JADX INFO: renamed from: x */
        public DialogInterface.OnClickListener f299x;

        /* JADX INFO: renamed from: y */
        public int f300y;

        /* JADX INFO: renamed from: z */
        public View f301z;

        /* JADX INFO: renamed from: c */
        public int f278c = 0;

        /* JADX INFO: renamed from: e */
        public int f280e = 0;
        public boolean E = false;
        public int I = -1;
        public boolean P = true;

        /* JADX INFO: renamed from: r */
        public boolean f293r = true;

        class a extends ArrayAdapter {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ RecycleListView f302a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context context, int i10, int i11, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i10, i11, charSequenceArr);
                this.f302a = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i10, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i10, view, viewGroup);
                boolean[] zArr = b.this.F;
                if (zArr != null && zArr[i10]) {
                    this.f302a.setItemChecked(i10, true);
                }
                return view2;
            }
        }

        /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$b$b */
        class C0004b extends CursorAdapter {

            /* JADX INFO: renamed from: a */
            private final int f304a;

            /* JADX INFO: renamed from: b */
            private final int f305b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ RecycleListView f306c;

            /* JADX INFO: renamed from: f */
            final /* synthetic */ AlertController f307f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0004b(Context context, Cursor cursor, boolean z10, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z10);
                this.f306c = recycleListView;
                this.f307f = alertController;
                Cursor cursor2 = getCursor();
                this.f304a = cursor2.getColumnIndexOrThrow(b.this.L);
                this.f305b = cursor2.getColumnIndexOrThrow(b.this.M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(this.f304a));
                this.f306c.setItemChecked(cursor.getPosition(), cursor.getInt(this.f305b) == 1);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return b.this.f277b.inflate(this.f307f.M, viewGroup, false);
            }
        }

        class c implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ AlertController f309a;

            c(AlertController alertController) {
                this.f309a = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                b.this.f299x.onClick(this.f309a.f248b, i10);
                if (b.this.H) {
                    return;
                }
                this.f309a.f248b.dismiss();
            }
        }

        class d implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ RecycleListView f311a;

            /* JADX INFO: renamed from: b */
            final /* synthetic */ AlertController f312b;

            d(RecycleListView recycleListView, AlertController alertController) {
                this.f311a = recycleListView;
                this.f312b = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                boolean[] zArr = b.this.F;
                if (zArr != null) {
                    zArr[i10] = this.f311a.isItemChecked(i10);
                }
                b.this.J.onClick(this.f312b.f248b, i10, this.f311a.isItemChecked(i10));
            }
        }

        public b(Context context) {
            this.f276a = context;
            this.f277b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        private void b(AlertController alertController) {
            ListAdapter dVar;
            RecycleListView recycleListView = (RecycleListView) this.f277b.inflate(alertController.L, (ViewGroup) null);
            if (this.G) {
                dVar = this.K == null ? new a(this.f276a, alertController.M, R.id.text1, this.f297v, recycleListView) : new C0004b(this.f276a, this.K, false, recycleListView, alertController);
            } else {
                int i10 = this.H ? alertController.N : alertController.O;
                if (this.K != null) {
                    dVar = new SimpleCursorAdapter(this.f276a, i10, this.K, new String[]{this.L}, new int[]{R.id.text1});
                } else {
                    dVar = this.f298w;
                    if (dVar == null) {
                        dVar = new d(this.f276a, i10, R.id.text1, this.f297v);
                    }
                }
            }
            alertController.H = dVar;
            alertController.I = this.I;
            if (this.f299x != null) {
                recycleListView.setOnItemClickListener(new c(alertController));
            } else if (this.J != null) {
                recycleListView.setOnItemClickListener(new d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.O;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.H) {
                recycleListView.setChoiceMode(1);
            } else if (this.G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f253g = recycleListView;
        }

        public void a(AlertController alertController) {
            View view = this.f282g;
            if (view != null) {
                alertController.l(view);
            } else {
                CharSequence charSequence = this.f281f;
                if (charSequence != null) {
                    alertController.q(charSequence);
                }
                Drawable drawable = this.f279d;
                if (drawable != null) {
                    alertController.n(drawable);
                }
                int i10 = this.f278c;
                if (i10 != 0) {
                    alertController.m(i10);
                }
                int i11 = this.f280e;
                if (i11 != 0) {
                    alertController.m(alertController.d(i11));
                }
            }
            CharSequence charSequence2 = this.f283h;
            if (charSequence2 != null) {
                alertController.o(charSequence2);
            }
            CharSequence charSequence3 = this.f284i;
            if (charSequence3 != null || this.f285j != null) {
                alertController.k(-1, charSequence3, this.f286k, null, this.f285j);
            }
            CharSequence charSequence4 = this.f287l;
            if (charSequence4 != null || this.f288m != null) {
                alertController.k(-2, charSequence4, this.f289n, null, this.f288m);
            }
            CharSequence charSequence5 = this.f290o;
            if (charSequence5 != null || this.f291p != null) {
                alertController.k(-3, charSequence5, this.f292q, null, this.f291p);
            }
            if (this.f297v != null || this.K != null || this.f298w != null) {
                b(alertController);
            }
            View view2 = this.f301z;
            if (view2 != null) {
                if (this.E) {
                    alertController.t(view2, this.A, this.B, this.C, this.D);
                    return;
                } else {
                    alertController.s(view2);
                    return;
                }
            }
            int i12 = this.f300y;
            if (i12 != 0) {
                alertController.r(i12);
            }
        }
    }

    private static final class c extends Handler {

        /* JADX INFO: renamed from: a */
        private WeakReference f314a;

        public c(DialogInterface dialogInterface) {
            this.f314a = new WeakReference(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == -3 || i10 == -2 || i10 == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f314a.get(), message.what);
            } else {
                if (i10 != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    private static class d extends ArrayAdapter {
        public d(Context context, int i10, int i11, CharSequence[] charSequenceArr) {
            super(context, i10, i11, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, o oVar, Window window) {
        this.f247a = context;
        this.f248b = oVar;
        this.f249c = window;
        this.R = new c(oVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.AlertDialog, R$attr.alertDialogStyle, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_android_layout, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.L = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_listLayout, 0);
        this.M = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.N = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.O = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_listItemLayout, 0);
        this.P = typedArrayObtainStyledAttributes.getBoolean(R$styleable.AlertDialog_showTitle, true);
        this.f250d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.AlertDialog_buttonIconDimen, 0);
        typedArrayObtainStyledAttributes.recycle();
        oVar.supportRequestWindowFeature(1);
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    private void b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    private ViewGroup i(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    private int j() {
        int i10 = this.K;
        return (i10 != 0 && this.Q == 1) ? i10 : this.J;
    }

    private void p(ViewGroup viewGroup, View view, int i10, int i11) {
        View viewFindViewById = this.f249c.findViewById(R$id.scrollIndicatorUp);
        View viewFindViewById2 = this.f249c.findViewById(R$id.scrollIndicatorDown);
        m0.B0(view, i10, i11);
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
        }
        if (viewFindViewById2 != null) {
            viewGroup.removeView(viewFindViewById2);
        }
    }

    private void u(ViewGroup viewGroup) {
        int i10;
        Button button = (Button) viewGroup.findViewById(R.id.button1);
        this.f261o = button;
        button.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f262p) && this.f264r == null) {
            this.f261o.setVisibility(8);
            i10 = 0;
        } else {
            this.f261o.setText(this.f262p);
            Drawable drawable = this.f264r;
            if (drawable != null) {
                int i11 = this.f250d;
                drawable.setBounds(0, 0, i11, i11);
                this.f261o.setCompoundDrawables(this.f264r, null, null, null);
            }
            this.f261o.setVisibility(0);
            i10 = 1;
        }
        Button button2 = (Button) viewGroup.findViewById(R.id.button2);
        this.f265s = button2;
        button2.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f266t) && this.f268v == null) {
            this.f265s.setVisibility(8);
        } else {
            this.f265s.setText(this.f266t);
            Drawable drawable2 = this.f268v;
            if (drawable2 != null) {
                int i12 = this.f250d;
                drawable2.setBounds(0, 0, i12, i12);
                this.f265s.setCompoundDrawables(this.f268v, null, null, null);
            }
            this.f265s.setVisibility(0);
            i10 |= 2;
        }
        Button button3 = (Button) viewGroup.findViewById(R.id.button3);
        this.f269w = button3;
        button3.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f270x) && this.f272z == null) {
            this.f269w.setVisibility(8);
        } else {
            this.f269w.setText(this.f270x);
            Drawable drawable3 = this.f272z;
            if (drawable3 != null) {
                int i13 = this.f250d;
                drawable3.setBounds(0, 0, i13, i13);
                this.f269w.setCompoundDrawables(this.f272z, null, null, null);
            }
            this.f269w.setVisibility(0);
            i10 |= 4;
        }
        if (z(this.f247a)) {
            if (i10 == 1) {
                b(this.f261o);
            } else if (i10 == 2) {
                b(this.f265s);
            } else if (i10 == 4) {
                b(this.f269w);
            }
        }
        if (i10 != 0) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void v(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f249c.findViewById(R$id.scrollView);
        this.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(R.id.message);
        this.F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f252f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.A.removeView(this.F);
        if (this.f253g == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.A.getParent();
        int iIndexOfChild = viewGroup2.indexOfChild(this.A);
        viewGroup2.removeViewAt(iIndexOfChild);
        viewGroup2.addView(this.f253g, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    private void w(ViewGroup viewGroup) {
        View viewInflate = this.f254h;
        if (viewInflate == null) {
            viewInflate = this.f255i != 0 ? LayoutInflater.from(this.f247a).inflate(this.f255i, viewGroup, false) : null;
        }
        boolean z10 = viewInflate != null;
        if (!z10 || !a(viewInflate)) {
            this.f249c.setFlags(131072, 131072);
        }
        if (!z10) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f249c.findViewById(R$id.custom);
        frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
        if (this.f260n) {
            frameLayout.setPadding(this.f256j, this.f257k, this.f258l, this.f259m);
        }
        if (this.f253g != null) {
            ((LinearLayout.LayoutParams) ((LinearLayoutCompat.a) viewGroup.getLayoutParams())).weight = 0.0f;
        }
    }

    private void x(ViewGroup viewGroup) {
        if (this.G != null) {
            viewGroup.addView(this.G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f249c.findViewById(R$id.title_template).setVisibility(8);
            return;
        }
        this.D = (ImageView) this.f249c.findViewById(R.id.icon);
        if (TextUtils.isEmpty(this.f251e) || !this.P) {
            this.f249c.findViewById(R$id.title_template).setVisibility(8);
            this.D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.f249c.findViewById(R$id.alertTitle);
        this.E = textView;
        textView.setText(this.f251e);
        int i10 = this.B;
        if (i10 != 0) {
            this.D.setImageResource(i10);
            return;
        }
        Drawable drawable = this.C;
        if (drawable != null) {
            this.D.setImageDrawable(drawable);
        } else {
            this.E.setPadding(this.D.getPaddingLeft(), this.D.getPaddingTop(), this.D.getPaddingRight(), this.D.getPaddingBottom());
            this.D.setVisibility(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void y() {
        View viewFindViewById;
        ListAdapter listAdapter;
        View viewFindViewById2;
        View viewFindViewById3 = this.f249c.findViewById(R$id.parentPanel);
        View viewFindViewById4 = viewFindViewById3.findViewById(R$id.topPanel);
        View viewFindViewById5 = viewFindViewById3.findViewById(R$id.contentPanel);
        View viewFindViewById6 = viewFindViewById3.findViewById(R$id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById3.findViewById(R$id.customPanel);
        w(viewGroup);
        View viewFindViewById7 = viewGroup.findViewById(R$id.topPanel);
        View viewFindViewById8 = viewGroup.findViewById(R$id.contentPanel);
        View viewFindViewById9 = viewGroup.findViewById(R$id.buttonPanel);
        ViewGroup viewGroupI = i(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupI2 = i(viewFindViewById8, viewFindViewById5);
        ViewGroup viewGroupI3 = i(viewFindViewById9, viewFindViewById6);
        v(viewGroupI2);
        u(viewGroupI3);
        x(viewGroupI);
        boolean z10 = viewGroup.getVisibility() != 8;
        boolean z11 = (viewGroupI == null || viewGroupI.getVisibility() == 8) ? 0 : 1;
        boolean z12 = (viewGroupI3 == null || viewGroupI3.getVisibility() == 8) ? false : true;
        if (!z12 && viewGroupI2 != null && (viewFindViewById2 = viewGroupI2.findViewById(R$id.textSpacerNoButtons)) != null) {
            viewFindViewById2.setVisibility(0);
        }
        if (z11 != 0) {
            NestedScrollView nestedScrollView = this.A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View viewFindViewById10 = (this.f252f == null && this.f253g == null) ? null : viewGroupI.findViewById(R$id.titleDividerNoCustom);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        } else if (viewGroupI2 != null && (viewFindViewById = viewGroupI2.findViewById(R$id.textSpacerNoTitle)) != null) {
            viewFindViewById.setVisibility(0);
        }
        ListView listView = this.f253g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).a(z11, z12);
        }
        if (!z10) {
            View view = this.f253g;
            if (view == null) {
                view = this.A;
            }
            if (view != null) {
                p(viewGroupI2, view, z11 | (z12 ? 2 : 0), 3);
            }
        }
        ListView listView2 = this.f253g;
        if (listView2 == null || (listAdapter = this.H) == null) {
            return;
        }
        listView2.setAdapter(listAdapter);
        int i10 = this.I;
        if (i10 > -1) {
            listView2.setItemChecked(i10, true);
            listView2.setSelection(i10);
        }
    }

    private static boolean z(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    public Button c(int i10) {
        if (i10 == -3) {
            return this.f269w;
        }
        if (i10 == -2) {
            return this.f265s;
        }
        if (i10 != -1) {
            return null;
        }
        return this.f261o;
    }

    public int d(int i10) {
        TypedValue typedValue = new TypedValue();
        this.f247a.getTheme().resolveAttribute(i10, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView e() {
        return this.f253g;
    }

    public void f() {
        this.f248b.setContentView(j());
        y();
    }

    public boolean g(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    public boolean h(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    public void k(int i10, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.R.obtainMessage(i10, onClickListener);
        }
        if (i10 == -3) {
            this.f270x = charSequence;
            this.f271y = message;
            this.f272z = drawable;
        } else if (i10 == -2) {
            this.f266t = charSequence;
            this.f267u = message;
            this.f268v = drawable;
        } else {
            if (i10 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f262p = charSequence;
            this.f263q = message;
            this.f264r = drawable;
        }
    }

    public void l(View view) {
        this.G = view;
    }

    public void m(int i10) {
        this.C = null;
        this.B = i10;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (i10 == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageResource(this.B);
            }
        }
    }

    public void n(Drawable drawable) {
        this.C = drawable;
        this.B = 0;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageDrawable(drawable);
            }
        }
    }

    public void o(CharSequence charSequence) {
        this.f252f = charSequence;
        TextView textView = this.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void q(CharSequence charSequence) {
        this.f251e = charSequence;
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void r(int i10) {
        this.f254h = null;
        this.f255i = i10;
        this.f260n = false;
    }

    public void s(View view) {
        this.f254h = view;
        this.f255i = 0;
        this.f260n = false;
    }

    public void t(View view, int i10, int i11, int i12, int i13) {
        this.f254h = view;
        this.f255i = 0;
        this.f260n = true;
        this.f256j = i10;
        this.f257k = i11;
        this.f258l = i12;
        this.f259m = i13;
    }
}
