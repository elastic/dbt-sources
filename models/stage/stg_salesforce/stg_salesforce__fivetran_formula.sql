
with source as (

    select * from {{ source('raw_salesforce', 'fivetran_formula') }}

),

renamed as (

    select
        field,
        object,
        _fivetran_synced,
        formula,
        sql,
        view_sql,
        reason_null

    from source

)

select * from renamed
