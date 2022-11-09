
with source as (

    select * from {{ source('raw_starred', 'responses') }}

),

renamed as (

    select
        form_id,
        rating_id,
        email_address,
        company_id,
        invitation_sent,
        response_received,
        response_url

    from source

)

select * from renamed
