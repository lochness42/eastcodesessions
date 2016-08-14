package sk.eu.jakab.sessionapp;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity implements View.OnClickListener{

    private EditText txtName;
    private TextView txtMessage;
    private Button btnEnter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //findviews
        txtMessage = (TextView) findViewById(R.id.txt_message);
        txtName = (EditText) findViewById(R.id.txt_name);
        btnEnter = (Button) findViewById(R.id.btn_enter);

        //listeners
        btnEnter.setOnClickListener(this);
    }

    @Override
    public void onClick(View view) {
        if (view.getId()==R.id.btn_enter){
            if(!txtName.getText().toString().trim().equals("")){
                txtMessage.setText("Hello "+txtName.getText()+"!");
            }else{
                txtMessage.setText("Hello!");
            }
        }
    }

    public void backdoor() {
        txtMessage.setText("This isn't intended to be available for people");
    }
}
